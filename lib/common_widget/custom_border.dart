
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

import '../gen/colors.gen.dart';
class CustomTextFormField extends StatelessWidget {
  final TextDirection? textDirection;
  final String hintText;
  final String? labelText;
  final TextStyle textStyle;
  final bool? obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? maxLength;
  final Color? fillColor;
  final TextAlign? textAlign;
  final Brightness? keyboardAppearance;
  final bool? autofocus;
  final bool? readOnly;
  final VoidCallback? onTap;
  final bool? autocorrect;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final int? minLines;
  final Color? cursorColor;
  final TextCapitalization textCapitalization;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final double? borderRadius;
  final bool? enabled;
  final TextStyle? errorStyle;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Iterable<String>? autofillHints;
  final String? prefixText;
  final String? suffixText;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  final bool? alignLabelWithHint;
  final Color? iconColor;
  final OutlineInputBorder? focusedErrorBorder;
  final bool? showCursor;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.labelText,
    required this.textStyle,
    this.obscureText,
    required this.controller,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.maxLength,
    this.fillColor,
    this.textDirection,
    this.textAlign,
    this.keyboardAppearance,
    this.autofocus,
    this.readOnly,
    this.onTap,
    this.autocorrect,
    this.onChanged,
    this.textInputType,
    this.minLines,
    this.cursorColor,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.contentPadding,
    this.borderRadius,
    this.enabled,
    this.errorStyle,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.textInputAction,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.autofillHints,
    this.prefixText,
    this.suffixText,
    this.floatingLabelBehavior,
    this.isDense,
    this.alignLabelWithHint,
    this.iconColor,
    this.focusedErrorBorder,
    this.showCursor,
    this.inputFormatters,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: textDirection,
      textAlign: textAlign ?? TextAlign.start,
      keyboardAppearance: keyboardAppearance,
      autofocus: autofocus ?? false,
      readOnly: readOnly ?? false,
      style: textStyle,
      onTap: onTap,
      autocorrect: autocorrect ?? false,
      onChanged: onChanged ?? (String value) {},
      maxLines: (obscureText ?? false) ? 1 : maxLines,
      minLines: minLines,
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      cursorColor: cursorColor ?? Theme.of(context).primaryColor,
      textCapitalization: textCapitalization,
      focusNode: focusNode,
      enabled: enabled ?? true,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      autofillHints: autofillHints,
      showCursor: showCursor ?? true,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: textStyle.copyWith(color: Colors.grey),
        filled: true,
        fillColor: fillColor ?? AppColors.cFFFFFF,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefixText: prefixText,
        suffixText: suffixText,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior: floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense ?? false,
        alignLabelWithHint: alignLabelWithHint ?? false,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: AppColors.cFFFFFF, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: const BorderSide(color: AppColors.cFFFFFF, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: const BorderSide(color: AppColors.cFFFFFF, width: 1),
        ),
        errorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
      ),
    );
  }
}
class TestTextFomFild extends StatefulWidget {
  const TestTextFomFild({super.key});
  @override
  State<TestTextFomFild> createState() => _TestTextFomFildState();
}
class _TestTextFomFildState extends State<TestTextFomFild> {
  final _controler  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 22),
        child: Column(
          children: [
            CustomTextFormField(hintText: 'ferdaus', textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.green), controller: _controler),
          ],
        ),
      ),
    );
  }
}
