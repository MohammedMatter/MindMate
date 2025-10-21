
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

class LastJournalsWidget extends StatelessWidget {
  const LastJournalsWidget({
    super.key,
    required this.lastJournals,
  });

  final List<String> lastJournals;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Last Journals", style: AppStyle.body.copyWith(fontSize: 18)),
        const SizedBox(height: 12),
        ...lastJournals
            .map(
              (note) => Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  note,
                  style: AppStyle.body.copyWith(fontSize: 13),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
