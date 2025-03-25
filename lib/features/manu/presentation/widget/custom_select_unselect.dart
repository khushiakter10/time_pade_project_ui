
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';



class SelectableButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function() onTap;

  const SelectableButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.cF58D1D : AppColors.cF0F5FA,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Text(
          label,
          style: TextFontStyle.headlineFFFFFFw400.copyWith(
            color: isSelected ? AppColors.cFFFFFF : AppColors.c000000,
          ),
        ),
      ),
    );
  }
}
