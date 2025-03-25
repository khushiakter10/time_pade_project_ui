import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomMessageWidget extends StatelessWidget {
  const CustomMessageWidget({
    super.key,
    required List<Map<String, String>> messages,
  }) : _messages = messages;

  final List<Map<String, String>> _messages;

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
      child: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          bool isUser = _messages[index]["sender"] == "You";
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            child: Row(
              mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                if (!isUser)
                  CircleAvatar(
                    backgroundImage: AssetImage(_messages[index]["profile"]!),
                    radius: 20.r,
                  ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
                    margin: EdgeInsets.only(left: isUser ? 0 : 10.w, right: isUser ? 10.w : 0),
                    decoration: BoxDecoration(
                      color: isUser ? AppColors.cFF7622 : AppColors.cF0F5FA,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _messages[index]["message"]!,
                          style:  TextFontStyle.headline32343Ew400text13,
                          softWrap: true,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          _messages[index]["time"]!,
                          style: TextFontStyle.headlineABABABw400text12,
                        ),
                      ],
                    ),
                  ),
                ),
                if (isUser)
                  CircleAvatar(
                    backgroundImage: AssetImage(_messages[index]["profile"]!),
                    radius: 20.r,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}