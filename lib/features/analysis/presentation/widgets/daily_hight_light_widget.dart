
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class DailyHightLightWidget extends StatelessWidget {
  const DailyHightLightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Daily Highlights", style: AppStyle.body.copyWith(fontSize: 18)),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
              Text("🌞 You had 4 good days in a row!"),
              SizedBox(height: 4),
              Text("🎯 You completed 2 Mind Activities this week"),
            ],
          ),
        ),
      ],
    );
  }
}
