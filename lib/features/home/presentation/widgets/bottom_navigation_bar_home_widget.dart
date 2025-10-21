import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/analysis/presentation/views/analysis_view.dart';
import 'package:mind_mate_project/features/main_layout/presentation/view_model/main_layout_view_model.dart';
import 'package:mind_mate_project/features/main_layout/presentation/views/main_layout_view.dart';

import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationBarHomeWidget extends StatefulWidget {
  const BottomNavigationBarHomeWidget({super.key});

  @override
  State<BottomNavigationBarHomeWidget> createState() =>
      _BottomNavigationBarHomeWidgetState();
}

class _BottomNavigationBarHomeWidgetState
    extends State<BottomNavigationBarHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainLayoutViewModel>(
      builder:
          (context, provMainLayout, child) => Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 16, left: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: SalomonBottomBar(
                onTap: (indexPage) {
                  provMainLayout.changePage(indexPage);
                },
                currentIndex: provMainLayout.index,
                backgroundColor: const Color.fromARGB(206, 111, 111, 116),
                selectedItemColor: AppColors.secondary,
                unselectedItemColor: Color(0xFF99E0E6),
                items: [
                  SalomonBottomBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(Icons.analytics_outlined),
                    title: Text('Analysis'),
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(Icons.book_online_outlined),
                    title: Text('Journal'),
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(Icons.smart_toy_outlined),
                    title: Text('Ai Chat'),
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(Icons.person_outline),
                    title: Text('Profile'),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
