import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';

class CustomCartWidget extends StatelessWidget {
  final String name;
  final int price;
  final int quantity;

  const CustomCartWidget({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(10.r),
            image: DecorationImage(image: AssetImage(Assets.images.dog.path),fit: BoxFit.cover),
          ),
        ),
        UIHelper.horizontalSpace(16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:  TextFontStyle.headlineFFFFFFw400.copyWith(fontSize: 18.sp),
              ),
             UIHelper.verticalSpace(5.h),
              Text(
                "\\$price",
                style:  TextFontStyle.headlineFFFFFFw700text14.copyWith(fontSize: 20.sp)
              ),
              UIHelper.verticalSpace(5.h),
               Text(
                "14\"",
                style: TextFontStyle.headline898991w400text18
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon:  const Icon(Icons.remove_circle, color: Colors.grey),
            ),
            Text(
              "$quantity",
              style:  const TextStyle(color: Colors.white, fontSize: 18),
            ),
            IconButton(
              onPressed: () {},
              icon:  const Icon(Icons.add_circle, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}