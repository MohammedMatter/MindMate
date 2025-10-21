import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/bar_chart_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/daily_hight_light_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/last_journals_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/line_chart_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/suggest_mind_activities_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/weekly_insight_widget.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/your_weekly_analysis_widget.dart';

class AnalysisViewBody extends StatelessWidget {
  const AnalysisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mindActivities = [
      {
        "title": "Short Meditation",
        "icon": Icons.self_improvement,
        "color": Colors.blueAccent,
      },
      {"title": "Deep Breathing", "icon": Icons.air, "color": Colors.teal},
      {
        "title": "Gratitude Journal",
        "icon": Icons.edit_note,
        "color": Colors.purpleAccent,
      },
      {
        "title": "Positive Affirmations",
        "icon": Icons.sunny,
        "color": Colors.orangeAccent,
      },
    ];
    final lastJournals = [
      "Had a productive day, feeling happy 😊",
      "Felt stressed but managed it with deep breathing",
      "Enjoyed journaling my gratitude list",
    ];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        YourWeeklyAnalysisWidget(),
        const SizedBox(height: 24),
        LineChartWidget(height: ScreenSize.h(context) * 0.15, paddingVal: 30),
        const SizedBox(height: 24),
        BarChartWidget(),
        const SizedBox(height: 24),
        WeeklyInsightWidget(),
        const SizedBox(height: 24),
        LastJournalsWidget(lastJournals: lastJournals),
        const SizedBox(height: 24),
        SuggestMindActivitiesWidget(mindActivities: mindActivities),
        const SizedBox(height: 24),

        DailyHightLightWidget(),

        const SizedBox(height: 40),
      ],
    );
  }
}
