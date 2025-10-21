// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class MindActivitiesSectionWidget extends StatelessWidget {
  const MindActivitiesSectionWidget({
    Key? key,
    required this.color_cards,
    required this.activities,
  }) : super(key: key);

  final List color_cards;
  final List activities;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            'Mind Activities',
            style: AppStyle.body.copyWith(fontSize: 18),
          ),
        ),
        SizedBox(
          height: ScreenSize.h(context) * 0.10,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: AspectRatio(
                    aspectRatio: 3.5,
                    child: ElevatedButton.icon(
                      icon:   Icon(activities[index]['icon'] , size: 30,),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          activities[index]['color']
                        ),
                      ),
                      onPressed: () {},
                      label: Align(
                        alignment: Alignment.center,
                        child: Text(
                          activities[index]['title'],
                          style: AppStyle.body.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
