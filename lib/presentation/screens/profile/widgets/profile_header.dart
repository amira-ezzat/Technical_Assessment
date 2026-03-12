import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_texts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(AppImagesPaths.profile),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              AppTexts(
                data: "Asmar Ajlouni",
                textColor: AppColors.white,
              ).bodyBSS(),

              const SizedBox(height: 4),

              AppTexts(
                data: "+962 234 567 2349",
                textColor: AppColors.beigeDark,
              ).bodyB9(),
            ],
          ),
        ),

        AppTexts(
          data: "Edit",
          textColor: AppColors.beige100,
        ).bodyB9(),
      ],
    );
  }
}
