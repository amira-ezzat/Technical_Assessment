import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_colors.dart';
import '../../core/styles/app_texts.dart';
import '../../model/venue_model.dart';

class VenueCard extends StatelessWidget {
  final Venue venue;

  const VenueCard({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [

          /// Image
          Positioned.fill(
            child: Image.asset(
              venue.image,
              fit: BoxFit.cover,
            ),
          ),

          /// Blur Bottom Area - تدريجي
          /// Progressive Blur
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 70,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              child: Stack(
                children: [

                  /// blur layer
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 12,
                      sigmaY: 12,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),

                  /// mask gradient (يعمل progressive)
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x00222222), // 0%
                          Color(0x88222222), // ~54%
                          Color(0xFF222222), // 100%
                        ],
                        stops: [0.0, 0.54, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /// Text
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

          /// Arrow Button
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