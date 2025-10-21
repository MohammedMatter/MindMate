
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class SuggestMindActivitiesWidget extends StatelessWidget {
  const SuggestMindActivitiesWidget({
    super.key,
    required this.mindActivities,
  });

  final List<Map<String, Object>> mindActivities;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Suggested Mind Activities",
          style: AppStyle.body.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: mindActivities.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final act = mindActivities[index];
              return Container(
                width: 140,
                decoration: BoxDecoration(
                  color: (act["color"] as Color).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      act["icon"] as IconData,
                      size: 40,
                      color: act["color"] as Color,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      act["title"] as String,
                      textAlign: TextAlign.center,
                      style: AppStyle.body.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
