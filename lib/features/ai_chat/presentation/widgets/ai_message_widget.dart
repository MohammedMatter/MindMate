import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class AiMessageWidget extends StatelessWidget {
  const AiMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primary.withOpacity(0.4),
          child: SizedBox(
            child: Image.asset('assets/images/bot_image.png'),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                Text(
                  'Ai Assistant',
                  style: AppStyle.body.copyWith(
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '10:30 pm',
                  style: AppStyle.body.copyWith(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(10),
              width: 230,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.05),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Text(
                'Hello Mohammed ! I am here to help you ',
                style: AppStyle.body.copyWith(
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

