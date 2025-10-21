import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';
import 'package:mind_mate_project/features/home/presentation/widgets/custom_mode_emogi_widget.dart';

class ModeRowWidget extends StatelessWidget {
  const ModeRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'How are you feeling ?',
            style: AppStyle.body.copyWith(fontSize: 18),
          ),
        ),
        SizedBox(height: ScreenSize.h(context) * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomModeEmojeWidget(
              image: 'assets/images/modes/heart_icon.png',
              mode: 'Great',
            ),
            CustomModeEmojeWidget(
              image: 'assets/images/modes/smile_icon.png',
              mode: 'Good',
            ),

            CustomModeEmojeWidget(
              image: 'assets/images/modes/okay_icon.png',
              mode: 'Okay',
            ),

            CustomModeEmojeWidget(
              image: 'assets/images/modes/not_good_icon.png',
              mode: 'Not good',
            ),

            CustomModeEmojeWidget(
              image: 'assets/images/modes/very_bad_icon.png',
              mode: 'V.bad',
            ),
          ],
        ),
      ],
    );
  }
}
