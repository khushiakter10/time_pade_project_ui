import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../helpers/ui_helpers.dart';
class CustomDeliveryWidget extends StatelessWidget {
  final Widget? staricon;
  final Widget? deliveryicon;
  final Widget? clockicon;
  const CustomDeliveryWidget({
    super.key, this.staricon, this.deliveryicon, this.clockicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        staricon??Container(),
        UIHelper.horizontalSpace(7.w),
        Text('4.7',style: TextFontStyle.headline181C2Ew700text16,),
        UIHelper.horizontalSpace(25.w),
        deliveryicon?? CircleAvatar(),
        UIHelper.horizontalSpace(7.w),
        Text('Free',style: TextFontStyle.headline181C2Ew400text14),
        UIHelper.horizontalSpace(25.w),
        clockicon??Container(),
        UIHelper.horizontalSpace(7.w),
        const Text('20 min')

      ],
    );
  }
}