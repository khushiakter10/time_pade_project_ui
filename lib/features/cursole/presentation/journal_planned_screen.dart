import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Journalplannedscreen extends StatefulWidget {
  const Journalplannedscreen({super.key});

  @override
  State<Journalplannedscreen> createState() => _JournalplannedscreenState();
}

class _JournalplannedscreenState extends State<Journalplannedscreen> {
  List<bool> isFavoriteList = List.generate(8, (_) => false);
  void toggleFavorite(int index) {
    setState(() {
      isFavoriteList[index] = !isFavoriteList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 60.h,horizontal: 9.w),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 13,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    //color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 35.h),
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.dog.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 1),
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: isFavoriteList[index] ? Colors.red : Colors.blue,
                                ),
                                onPressed: () => toggleFavorite(index),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('khusi', style: TextFontStyle.headline32343Ew800text22),
                            UIHelper.verticalSpace(4.h),
                            Text('Apple', style: TextFontStyle.headline676767w400text14),
                            UIHelper.verticalSpace(4.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text('Bangladesh About us', style: TextFontStyle.headline181C2Ew400text14),
                                ),
                              ],
                            ),
                            UIHelper.verticalSpace(4.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text('Bangladesh About us', style: TextFontStyle.headline898991w400text18.copyWith(fontSize: 15.sp)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
