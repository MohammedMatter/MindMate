import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/journal/presentation/widgets/journal_view_body.dart';

class JournalView extends StatelessWidget {
  const JournalView({super.key});

  @override
  Widget build(BuildContext context) {
    final journals = [
      "Today I felt really productive and happy 😊",
      "Had a relaxing evening with meditation",
      "Feeling a bit stressed but managed it with breathing exercises",
      "Grateful for the sunny weather and my friends",
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Your Journal",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: JournalViewBody(journals: journals),
    );
  }
}
