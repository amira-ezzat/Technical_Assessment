import 'package:flutter/material.dart';
import '../../../../core/styles/app_texts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../model/loyalty_model.dart';

class HistoryCard extends StatelessWidget {

  final LoyaltyHistory history;

  const HistoryCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 67,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: AppColors.grey400,
        borderRadius: BorderRadius.circular(11),
      ),

      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: 52,
            height: 50,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                history.image,
                height: 30,
                width: 34,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppTexts(
                         data:  history.restaurant,
                          textColor: Colors.white,
                        ).bodyBS(),

                        const SizedBox(height: 4),

                        AppTexts(
                         data:  history.date,
                          textColor: AppColors.white.withOpacity(0.34),

                        ).bodyB9(),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.beigeDark,
                            AppColors.beige100,
                          ],
                        ),
                      ),
                      child: AppTexts(
                       data:  "${history.credits} Credits",
                       textColor: AppColors.black
                      ).bodyBS(),
                    ),

                  ],
                ),

                const SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [AppColors.beigeDark, AppColors.beige100],
                      ).createShader(bounds),
                      child: AppTexts(
                       data: "${history.price} • ${history.credits} Credits",

                      ).bodyB9(),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white54,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )

    );
  }
}