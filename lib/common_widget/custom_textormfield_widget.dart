import 'package:flutter/material.dart';
class CustomTextFormWiget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final TextEditingController?scrollController;
  final String? hintTxt;
  final String? labelText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hinStyleColor;
  final TextStyle? labelTextColor;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final  bool?  filled;
  const CustomTextFormWiget({
    super.key,
    this.textStyle,
    this.controller,
    this.hintTxt,
    this.labelText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.hinStyleColor,
    this.labelTextColor,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly,
    this.scrollController,
    this.fillColor,
    this.filled,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        labelText: labelText,
        labelStyle: hinStyleColor,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        hintText: hintTxt,
        hintStyle: hinStyleColor,
        focusedBorder: focusedBorder,
        enabledBorder: enabledBorder,
        errorBorder: errorBorder,
        border: border,
      ),
    );
  }
}
