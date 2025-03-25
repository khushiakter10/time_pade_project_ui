import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../helpers/ui_helpers.dart';

class CustomCategoriseWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleTextStyle;
  final Widget? categoriseIcon;
  final Decoration? decoration;
  final Color? decorationColor;

  const CustomCategoriseWidget({
    super.key,
    this.title,
    this.titleTextStyle,
    this.categoriseIcon,
    this.decoration,
    this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          categoriseIcon ?? CircleAvatar(),
          UIHelper.verticalSpace(20.h),
          Expanded(
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: Text(
                title ?? '',
                style: titleTextStyle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
