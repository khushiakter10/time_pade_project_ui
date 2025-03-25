import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class CustomDesignWidget extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? subtitle3;
  final Color? textStyle;
  final Color? subtitleStyle;
  final Color? subtitleStyle3;
  final ImageProvider? image1;
  final ImageProvider? image2;
  final Widget? staricon;
  final String? data;
  final TextStyle? titleStyle;

  const CustomDesignWidget({
    super.key,
    this.title,
    this.subtitle,
    this.subtitle3,
    this.textStyle,
    this.subtitleStyle,
    this.subtitleStyle3,
    this.image1,
    this.image2,
    this.staricon,
    this.data,
    this.titleStyle,
  });

  @override
  State<CustomDesignWidget> createState() => _CustomDesignWidgetState();
}

class _CustomDesignWidgetState extends State<CustomDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 7.w),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        // border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: widget.image1 != null
                ? Image(image: widget.image1!, height: 40.h, width: 40.h, fit: BoxFit.cover)
                : Image.asset(
              Assets.images.dog.path,
              height: 40.h,
              width: 40.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title ?? "Food Name",
                style: widget.titleStyle ?? TextFontStyle.headline32343Ew400text13,
              ),
              Row(
                children: [
                  if (widget.staricon != null) widget.staricon!,
                  UIHelper.horizontalSpace(7.w),
                  Text(widget.data ?? '', style: TextStyle(fontSize: 14.sp)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
