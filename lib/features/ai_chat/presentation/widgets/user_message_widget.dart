
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class UserMessageWidget extends StatelessWidget {
  const UserMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/person_profile.png',
          ),
          radius: 30,
          backgroundColor: AppColors.primary.withOpacity(0.3),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                Text(
                  'You',
                  style: AppStyle.body.copyWith(
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '11:00 pm',
                  style: AppStyle.body.copyWith(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(10),
              width: 230,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.secondary.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Text(
                'I love u so much',
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
