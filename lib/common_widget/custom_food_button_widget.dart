import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../gen/colors.gen.dart';

class CustomFoodButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final TextStyle? titleStyle;
  final Widget? mapIcon;

  const CustomFoodButtonWidget({
    super.key, required this.onTap, required this.name, this.titleStyle, this.mapIcon,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.cFF7622,
        ),
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: titleStyle,
                  ),
                  UIHelper.horizontalSpace(16.w),
                  mapIcon?? Container(),
                ],
              )

        ),
      ),
    );
  }
}