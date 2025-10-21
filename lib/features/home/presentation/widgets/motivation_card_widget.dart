import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Messages for the day',
          style: AppStyle.body.copyWith(fontSize: 18),
        ),
        Stack(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                color: AppColors.secondary.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'You are brave than you believe ,\nstronger than you seem\nand smarter than you think',
                    style: AppStyle.body,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'assets/images/picture_of_a_relaxed_person_preview.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
