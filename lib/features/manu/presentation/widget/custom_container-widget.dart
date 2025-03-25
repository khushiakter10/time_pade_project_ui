import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class CustomContainerWidget extends StatefulWidget {
  final String name;
  final String imagePath;
  final Color color;


  const  CustomContainerWidget({
    super.key,
    required this.name,
    required this.imagePath,
    this.color =AppColors.cFFFFFF,
  });

  @override
  State<CustomContainerWidget> createState() => _CustomContainerWidgetState();
}

class _CustomContainerWidgetState extends State<CustomContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 6.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: AppColors.cF0F5FA,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Row(
          children: [
            SvgPicture.asset(widget.imagePath,height: 25.h,),
            UIHelper.horizontalSpace(11.w),
            Text(
              widget.name,
              style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
