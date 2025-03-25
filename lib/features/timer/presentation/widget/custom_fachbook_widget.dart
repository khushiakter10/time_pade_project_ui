
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class CustomFachbookWidget extends StatelessWidget {
  final Widget? image1;
  final Widget? image2;
  final Widget? image3;

  const CustomFachbookWidget({
    super.key,
    this.image1,
    this.image2,
    this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image1 ?? SvgPicture.asset(Assets.icons.fachbook,height: 62.h),

        UIHelper.horizontalSpace(10.w),

        image2 ?? SvgPicture.asset(Assets.icons.openpakhi,height: 62.h),

        UIHelper.horizontalSpace(10.w),

        image3 ??  SvgPicture.asset(Assets.icons.apple,height: 62.h)
      ],
    );
  }
}
