import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/bottom_navigation_bar_home_widget.dart';
import 'package:mind_mate_project/features/main_layout/presentation/view_model/main_layout_view_model.dart';
import 'package:provider/provider.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarHomeWidget(),
      body: Consumer<MainLayoutViewModel>(
        builder:
            (context, provMainLayout, child) =>
                provMainLayout.pages[provMainLayout.index],
      ),
    );
  }   
}
