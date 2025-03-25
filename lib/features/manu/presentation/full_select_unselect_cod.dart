// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../constants/text_font_style.dart';
// import '../../../gen/colors.gen.dart';
// import '../../../helpers/ui_helpers.dart';
//
// class SelectScreen extends StatefulWidget {
//   const SelectScreen({super.key});
//
//   @override
//   State<SelectScreen> createState() => _SelectScreenState();
// }
//
// class _SelectScreenState extends State<SelectScreen> {
//   bool _isSelected1 = false;
//   bool _isSelected2 = false;
//   bool _isSelected3 = false;
//
//   void _handleSelection(int selectedIndex) {
//     setState(() {
//       if (selectedIndex == 1) {
//         _isSelected1 = true;
//         _isSelected2 = false;
//         _isSelected3 = false; // Deselect all others
//       } else if (selectedIndex == 2) {
//         _isSelected1 = false;
//         _isSelected2 = true;
//         _isSelected3 = false; // Deselect all others
//       } else if (selectedIndex == 3) {
//         _isSelected1 = false;
//         _isSelected2 = false;
//         _isSelected3 = true; // Deselect all others
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             UIHelper.verticalSpace(100.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => _handleSelection(1),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
//                     decoration: BoxDecoration(
//                       color: _isSelected1 ? AppColors.cF58D1D : AppColors.cF0F5FA,
//                       borderRadius: BorderRadius.circular(22.r),
//                     ),
//                     child: Text(
//                       "Home",
//                       style: TextFontStyle.headlineFFFFFFw400.copyWith(
//                         color: _isSelected1 ? AppColors.cFFFFFF : AppColors.c000000,
//                       ),
//                     ),
//                   ),
//                 ),
//                 UIHelper.horizontalSpace(6.w),
//                 GestureDetector(
//                   onTap: () => _handleSelection(2),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
//                     decoration: BoxDecoration(
//                       color: _isSelected2 ? AppColors.cF58D1D : AppColors.cF0F5FA,
//                       borderRadius: BorderRadius.circular(22.r),
//                     ),
//                     child: Text(
//                       "Work",
//                       style: TextFontStyle.headlineFFFFFFw400.copyWith(
//                         color: _isSelected2 ? AppColors.cFFFFFF : AppColors.c000000,
//                       ),
//                     ),
//                   ),
//                 ),
//                 UIHelper.horizontalSpace(6.w),
//                 GestureDetector(
//                   onTap: () => _handleSelection(3),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
//                     decoration: BoxDecoration(
//                       color: _isSelected3 ? AppColors.cF58D1D : AppColors.cF0F5FA,
//                       borderRadius: BorderRadius.circular(22.r),
//                     ),
//                     child: Text(
//                       "Other",
//                       style: TextFontStyle.headlineFFFFFFw400.copyWith(
//                         color: _isSelected3 ? AppColors.cFFFFFF : AppColors.c000000,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
