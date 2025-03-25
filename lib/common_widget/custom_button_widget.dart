import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final Color? color;
  final TextStyle? textStyleColor;

  const CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.name,
    this.color, this.textStyleColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Center(
              child: Text(
                name,
                style: textStyleColor,
              )),
        ),
      ),
    );
  }
}


