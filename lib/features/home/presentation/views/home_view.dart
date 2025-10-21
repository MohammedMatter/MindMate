import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/ai_chat_section_widget.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/custom_analysis_section.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/mode_row_widget.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/mind_activities_section_widget.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/motivation_card_widget.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/welcome_home_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List colorActivities = const [
    Color.fromARGB(255, 126, 172, 209),
    Color.fromARGB(255, 159, 127, 214),
    Color.fromARGB(255, 124, 179, 152),
    Color.fromARGB(255, 153, 204, 199),
    Color.fromARGB(255, 226, 218, 147),
  ];
  final activities = [
  {"title": "Short Meditation", "icon": Icons.self_improvement, "color": Colors.blueAccent},
  {"title": "Deep Breathing", "icon": Icons.air, "color": Colors.teal},
  {"title": "Gratitude Journal", "icon": Icons.edit_note, "color": Colors.purpleAccent},
  {"title": "Positive Affirmations", "icon": Icons.sunny, "color": Colors.orangeAccent},
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Welcome_home_widget(),
                    SizedBox(height: 4),
                    MotivationCard(),
                    SizedBox(height: 30),
                    AiChatSectionWidget(),
                    SizedBox(height: 10),
                    ModeRowWidget(),
                    SizedBox(height: 16),
                  ],
                ),
              ),

              MindActivitiesSectionWidget(
                color_cards: colorActivities,
                activities: activities,
              ),
              SizedBox(height: 30),
              CustomAnalysisSection(),
            ],
          ),
        ),
      ),
    );
  }
}
