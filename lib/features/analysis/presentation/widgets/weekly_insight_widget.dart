
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class WeeklyInsightWidget extends StatelessWidget {
  const WeeklyInsightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Weekly Insights", style: AppStyle.body.copyWith(fontSize: 18)),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Your overall mood was mostly positive 🟢.\n"
                "Best day: Tuesday 🌞, Worst day: Friday 😔\n"
                "You had 4 good days in a row — great consistency!\n"
                "Keep journaling to track your thoughts clearly. 💪",
                style: AppStyle.body.copyWith(fontSize: 13),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

