import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class EmojiScreen extends StatefulWidget {
  const EmojiScreen({super.key});

  @override
  State<EmojiScreen> createState() => _EmojiScreenState();
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
          Expanded(child: Container()),
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
                    hintText: "Type a message..."))),
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
                config: const Config(
                  height: 256,
                  emojiViewConfig: EmojiViewConfig(),
                  categoryViewConfig: CategoryViewConfig(),
                  bottomActionBarConfig: BottomActionBarConfig(),
                  searchViewConfig: SearchViewConfig(),
                  skinToneConfig: SkinToneConfig(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
