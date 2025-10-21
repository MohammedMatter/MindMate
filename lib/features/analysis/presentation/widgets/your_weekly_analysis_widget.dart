
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class YourWeeklyAnalysisWidget extends StatelessWidget {
  const YourWeeklyAnalysisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Weekly Analysis",
          style: AppStyle.body.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Oct 14–20 | Avg Mood: 7/10 | Best Day: Tue 🌞 | Worst Day: Fri 😔",
          style: AppStyle.body.copyWith(fontSize: 13, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
