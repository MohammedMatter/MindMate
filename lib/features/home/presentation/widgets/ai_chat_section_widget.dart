import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';
import 'package:mind_mate_project/features/home/presentation/view_model/home_view_model.dart';
import 'package:mind_mate_project/features/main_layout/presentation/view_model/main_layout_view_model.dart';

import 'package:provider/provider.dart';

class AiChatSectionWidget extends StatelessWidget {
  const AiChatSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainLayoutViewModel>(
      builder:
          (context, provMainLayout, child) => Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: ScreenSize.h(context) * 0.1,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.14),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 70,
                  child: Image.asset('assets/images/bot_image.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chat',
                      style: AppStyle.body.copyWith(color: AppColors.primary),
                    ),
                    Text(
                      'With Mind Mate',
                      style: AppStyle.body.copyWith(
                        fontSize: ScreenSize.h(context) * 0.018,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                SizedBox(
                  height: ScreenSize.h(context) * 0.05,
                  width: ScreenSize.w(context) * 0.38,
                  child: ElevatedButton.icon(
                    iconAlignment: IconAlignment.end,
                    icon: Icon(Icons.arrow_forward_outlined),
                    onPressed: () {
                      provMainLayout.changePage(3);
                    },
                    label: Text('Click Here', style: AppStyle.button),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
