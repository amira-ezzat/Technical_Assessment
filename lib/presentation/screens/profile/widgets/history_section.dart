import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_texts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../data/dummy_data.dart';
import 'history_card.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          AppTexts(
            data: "Loyalty History",
            textColor: AppColors.white.withOpacity(0.82),
          ).bodyBM(),

          const SizedBox(height: 16),

          Expanded(
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return HistoryCard(history: history[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}