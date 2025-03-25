import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/all_routes.dart';
import 'widget/message_custom_widget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();
  bool _emojiShowing = false;
  final FocusNode _focusNode = FocusNode();

  String userProfile = "assets/images/dog.png";
  String botProfile = "assets/images/gold.jpg";
  Map<String, String> botReplies = {
    "Hello": "Hi there! How can I help you? 😊",
    "How are you?": "I'm just a bot, but I'm doing great! 🚀",
    "What is Flutter?": "Flutter is Google's UI toolkit for building apps.",
    "Who created Flutter?": "Flutter was developed by Google.",
    "Bye": "Goodbye! Have a great day! 👋",
  };

  void sendMessage(String question) {
    if (question.trim().isEmpty) return;

    String currentTime = DateTime.now().toString().substring(11, 16);

    setState(() {
      _messages.add({
        "sender": "You",
        "message": question,
        "profile": userProfile,
        "time": currentTime,
      });
    });

    String reply = botReplies[question] ?? "Sorry, I don't understand.";

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          String botReplyTime = DateTime.now().toString().substring(11, 16);
          _messages.add({
            "sender": "Bot",
            "message": reply,
            "profile": botProfile,
            "time": botReplyTime,
          });
        });
      }
    });

    _controller.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Row(
              children: [
                GestureDetector( onTap: (){NavigationService.goBack;},
                  child: CircleAvatar(
                      radius: 22.r,
                      backgroundColor: AppColors.cECF0F4,
                      child: Image.asset(Assets.images.close.path)
                  ),
                ),
                UIHelper.horizontalSpace(10.w),
                GestureDetector(onTap: (){NavigationService.navigateTo(Routes.orderTrackingScreen);},
                  child: Text(
                    'Robert Fox',
                    style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                  ),
                ),
              ],
            ),
            CustomMessageWidget(messages: _messages),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      _emojiShowing ? Icons.keyboard : Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _emojiShowing = !_emojiShowing;
                        if (_emojiShowing) {
                          _focusNode.unfocus();
                        } else {
                          _focusNode.requestFocus();
                        }
                      });
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      onTap: () {
                        setState(() => _emojiShowing = false);
                      },
                      decoration: InputDecoration(
                        hintText: "Write something...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.cF0F5FA,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            if (_controller.text.isNotEmpty) {
                              sendMessage(_controller.text);
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: Image.asset(Assets.images.sent.path, height: 24),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (_emojiShowing)
              SizedBox(
                height: 250.h,
                child: EmojiPicker(
                  onEmojiSelected: (category, emoji) {
                    _controller.text += emoji.emoji;
                    _controller.selection = TextSelection.fromPosition(
                      TextPosition(offset: _controller.text.length),
                    );
                  },
                ),
              ),
          ],
        ),
      ),

    );
  }
}
