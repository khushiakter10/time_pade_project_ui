import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final BorderRadius? borderRadius;
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
    this.filled, this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  controller,
      decoration: InputDecoration(
        hintText: hintTxt,
       hintStyle: hinStyleColor,
       labelText: labelText,
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8.r),
         borderSide: BorderSide(color: AppColors.mart)
       ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.mart)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.mart),
        )
      ),
    );
  }
}
