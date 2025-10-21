
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';
import 'package:mind_mate_project/features/analysis/presentation/widgets/line_chart_widget.dart';
import 'package:mind_mate_project/features/main_layout/presentation/view_model/main_layout_view_model.dart';
import 'package:provider/provider.dart';

class CustomAnalysisSection extends StatelessWidget {
  const CustomAnalysisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainLayoutViewModel>(
      builder:
          (context, provMainLayout, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  style: ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(
                      AppColors.primary.withOpacity(0.3),
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      AppColors.primary,
                    ),
                  ),
                  iconAlignment: IconAlignment.end,
                  icon: Icon(Icons.arrow_forward_sharp),
                  onPressed: () {
                    provMainLayout.changePage(1);
                  },
                  label: Text(
                    'More about yousr mode analaysis',
                    style: AppStyle.body.copyWith(fontSize: 16),
                  ),
                ),
                LineChartWidget(
                  height: ScreenSize.h(context) * 0.1,
                  paddingVal: 32,
                ),
              ],
            ),
          ),
    );
  }
}
