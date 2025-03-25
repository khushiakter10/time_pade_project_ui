import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widget/custom_border.dart';
import '../../../common_widget/myCustomTextFormfild.dart';
import '../../../gen/assets.gen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(60.h),
          MyCustomTextFormWidget(
            helperText: 'kkkk',
         helperStyle: TextStyle(color: Colors.red),
         counterText: 'jjjjjjjjjjj',
         hintTxt: 'khusi',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            isDense: false,

          )
        ],
      ),
    );
  }
}
