import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';

class MyCustomTextFormWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final TextEditingController? scrollController;
  final String? hintTxt;
  final String? labelText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hinStyle;
  final TextStyle? labelTextStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextStyle? errorStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  const MyCustomTextFormWidget({
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
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly,
    this.scrollController,
    this.fillColor,
    this.filled,
    this.borderRadius,
    this.hinStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.errorStyle,
    this.floatingLabelBehavior, this.isDense,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon?? Image.asset(Assets.images.dog.path,height: 24.h,),
        prefixIcon: prefixIcon,
        hintText: hintTxt?? 'khusi',
        hintStyle: hinStyle?.copyWith(color: Colors.red),
        labelText: labelText,
        labelStyle: labelTextStyle,
        fillColor: fillColor ?? Colors.grey,
        filled: filled ?? true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense ?? false,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.mart),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.mart),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.mart),
        ),
      ),
    );
  }
}
