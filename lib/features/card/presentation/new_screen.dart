import 'package:anytimetp_app/common_widget/custom_textormfield_widget.dart';
import 'package:flutter/material.dart';
class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
        CustomTextFormWiget() , CustomTextFormWiget(),
        CustomTextFormWiget() , CustomTextFormWiget()
        ],
      ),
    );
  }
}
