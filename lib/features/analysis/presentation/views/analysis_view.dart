
import 'package:flutter/material.dart';


import 'package:mind_mate_project/features/analysis/presentation/widgets/analysis_view_body.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mood Analysis')),
      body: AnalysisViewBody(),
    );
  }
}

