import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_colors.dart';
import '../../../../core/styles/app_texts.dart';
import '../../../../model/venue_model.dart';

class VenueCard extends StatelessWidget {
  final Venue venue;

  const VenueCard({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [


          Positioned.fill(
            child: Image.asset(
              venue.image,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              venue.blurImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTexts(
                  data: venue.category,
                  textColor: AppColors.white,
                ).bodyBSS(),

                const SizedBox(height: 2),

                AppTexts(
                  data: venue.name,
                  textColor: AppColors.beigeDark,
                ).bodyBM(),
              ],
            ),
          ),

          Positioned(
            bottom: 16,
            right: 16,
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white54),
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.beigeDark,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}