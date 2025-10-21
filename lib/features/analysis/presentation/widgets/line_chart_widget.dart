import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({required this.height, required this.paddingVal, super.key});
  double height;
  double paddingVal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("Weekly Mood Trend", style: AppStyle.body.copyWith(fontSize: 18)),
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.all(paddingVal),
          child: SizedBox(
            height: height,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((barSpot) {
                        int yVal = barSpot.y.toInt();
                        return LineTooltipItem(
                          '${yVal}',
                          TextStyle(color: AppColors.primary),
                        );
                      }).toList();
                    },
                  ),
                ),
                backgroundColor: AppColors.primary.withOpacity(0.05),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.primary.withOpacity(0.1),
                    ),
                    dotData: FlDotData(show: false),
                    isCurved: true,
                    color: AppColors.primary,
                    spots: [
                      FlSpot(0, 5),
                      FlSpot(1, 0),
                      FlSpot(2, 3),
                      FlSpot(3, 6),
                      FlSpot(4, 5),
                      FlSpot(5, 3),
                      FlSpot(6, 5),
                    ],
                  ),
                ],

                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      interval: 1,
                      showTitles: false,

                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: AppStyle.body.copyWith(fontSize: 12),
                        );
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),

                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        List<String> days = [
                          'Mon',
                          'Sun',
                          'Tue',
                          'Wed',
                          'The',
                          'Fri',
                          'Sat',
                        ];
                        if (value.toInt() < days.length) {
                          return Text(
                            days[value.toInt()],
                            style: AppStyle.body,
                          );
                        } else
                          return SizedBox();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
