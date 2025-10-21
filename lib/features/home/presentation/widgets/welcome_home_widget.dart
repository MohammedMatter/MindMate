
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class Welcome_home_widget extends StatelessWidget {
  const Welcome_home_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Hi,Mo', style: AppStyle.heading),
            SizedBox(width: 5),
            Icon(Icons.sunny, color: Colors.amber, size: 30),
          ],
        ),
        Text('your daily mind space', style: AppStyle.supHeading),
      ],
    );
  }
}
