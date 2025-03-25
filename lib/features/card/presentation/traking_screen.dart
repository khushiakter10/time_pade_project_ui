import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/custom_time_line_widget.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          children: [
            // Top Indicator
            Container(
              width: 50.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            SizedBox(height: 20.h),

            // Restaurant Info
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Uttora Coffee House",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Ordered At 06 Sept, 10:00pm",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),

            // Order Items
            Row(
              children: [
                Text("2x ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                Text("Burger", style: TextStyle(fontSize: 14.sp)),
              ],
            ),
            Row(
              children: [
                Text("4x ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                Text("Sandwich", style: TextStyle(fontSize: 14.sp)),
              ],
            ),
            SizedBox(height: 20.h),

            // Estimated Delivery Time
            Text(
              "20 min",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "ESTIMATED DELIVERY TIME",
              style: TextStyle(fontSize: 12.sp, color: Colors.grey),
            ),
            SizedBox(height: 20.h),

            // Order Status Timeline
            Expanded(
              child: Column(
                children: [
                  buildTimelineTile("Your order has been received", isActive: true),
                  buildTimelineTile("The restaurant is preparing your food", isActive: true),
                  buildTimelineTile("Your order has been picked up for delivery"),
                  buildTimelineTile("Order arriving soon!"),
                ],
              ),
            ),

            // Courier Info
            Container(
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.r,
                    spreadRadius: 1.r,
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage(Assets.images.dog.path)
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Robert F.",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Courier",
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                 UIHelper.horizontalSpace(80.w),
                 CircleAvatar(
                   backgroundImage: AssetImage(Assets.images.gold.path),
                 ),
                  IconButton(
                    icon: Icon(Icons.message, color: Colors.orange, size: 30.r),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }}
