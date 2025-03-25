import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';
class CustomChikenWidget extends StatelessWidget {
  const CustomChikenWidget({
    super.key,
    required this.salt,
  });

  final List<String> salt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: salt.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: CircleAvatar(
              backgroundColor: AppColors.cFFEBE4,
              radius: 30.r,
              child: Image.asset(
                salt[index],
                height: 24.h,
              ),
            ),
          );
        },
      ),
    );
  }
}