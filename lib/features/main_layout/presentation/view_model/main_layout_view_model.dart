import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/views/ai_chat_view.dart';
import 'package:mind_mate_project/features/analysis/presentation/views/analysis_view.dart';
import 'package:mind_mate_project/features/home/presentation/views/home_view.dart';
import 'package:mind_mate_project/features/journal/presentation/views/journal_view.dart';
import 'package:mind_mate_project/features/profile/presentation/views/profile_view.dart';

class MainLayoutViewModel extends ChangeNotifier {
  int index = 0;
  List pages = [
    HomeView(),
    AnalysisView(),
    JournalView(),
    AiChatView(),
    ProfileView(),
  ];
  void changePage(int indexPage) {
    index = indexPage;
    notifyListeners();
  }
}
