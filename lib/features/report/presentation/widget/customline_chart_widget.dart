import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class CustomLineChartWidget extends StatelessWidget {
  const CustomLineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 90.h, horizontal: 12.w), // Padding adjusted
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.r,
              spreadRadius: 0.r,
            ),
          ],
        ),
        child: ClipRect(
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 3,
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: leftTitleWidgets,
                    reservedSize: 40.sp,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: bottomTitleWidgets,
                    reservedSize: 24.sp,
                  ),
                ),
                topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 0.5),
                    FlSpot(1, 1.5),
                    FlSpot(2, 1.0),
                    FlSpot(3, 2.5),
                    FlSpot(4, 1.8),
                    FlSpot(5, 2.2),
                    FlSpot(6, 1.5),
                  ],
                  isCurved: true,
                  color: AppColors.cA366E0,
                  barWidth: 5.w,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: true,
                    checkToShowDot: (spot, barData) => spot.x == 3,
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                        radius: 5.sp,
                        color: AppColors.cFFFFFF,
                        strokeWidth: 7.w,
                        strokeColor: AppColors.cA366E0,
                      );
                    },
                  ),
                  belowBarData: BarAreaData(show: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Left Title Widget
Widget leftTitleWidgets(double value, TitleMeta meta) {
  Map<int, String> labels = {
    0: '0h',
    1: '0h30m',
    2: '2h0m',
    3: '2h30m',
  };

  return labels.containsKey(value.toInt())
      ? Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w,),
    child: Text(
      labels[value.toInt()]!,
      style: TextFontStyle.headline9C9BA215.copyWith(fontSize: 10.sp),
    ),
  )
      : Container();
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  Map<int, String> labels = {
    0: '8AM',
    2: '9AM',
    4: '10AM',
    6: '12AM',
  };

  return labels.containsKey(value.toInt())
      ? Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Text(
      labels[value.toInt()]!,
      style: TextFontStyle.headline9C9BA215.copyWith(fontSize: 10.sp),
    ),
  )
      : Container();
}
