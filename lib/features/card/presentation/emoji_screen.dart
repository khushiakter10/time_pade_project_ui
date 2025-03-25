import 'package:flutter/material.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class EmojiScreen extends StatefulWidget {
  const EmojiScreen({super.key});

  @override
  _EmojiScreenState createState() => _EmojiScreenState();
}

class _EmojiScreenState extends State<EmojiScreen> {
  final TextEditingController textEditingController = TextEditingController();
  bool _emojiShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Emoji Picker")),
      body: Column(
        children: [
          Expanded(child: Container()), // Placeholder for messages
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.emoji_emotions_outlined),
                onPressed: () {
                  setState(() {
                    _emojiShowing = !_emojiShowing;
                  });
                },
              ),
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: "Type a message...",
                  ),
                ),
              ),
            ],
          ),
          if (_emojiShowing)
            SizedBox(
              height: 256,
              child: EmojiPicker(
                onEmojiSelected: (Category? category, Emoji emoji) {
                  setState(() {
                    textEditingController.text += emoji.emoji;
                  });
                },
                textEditingController: textEditingController,
                config: Config(
                  height: 256, // উচ্চতা নির্ধারণ
                  emojiViewConfig: const EmojiViewConfig(), // ইমোজি ভিউ কনফিগ
                  categoryViewConfig: const CategoryViewConfig(), // ক্যাটাগরি ভিউ কনফিগ
                  bottomActionBarConfig: const BottomActionBarConfig(), // নিচের অ্যাকশন বার কনফিগ
                  searchViewConfig: const SearchViewConfig(), // সার্চ বার কনফিগ
                  skinToneConfig: const SkinToneConfig(), // স্কিন টোন কনফিগ
                ),
              ),
            ),
        ],
      ),
    );
  }
}
