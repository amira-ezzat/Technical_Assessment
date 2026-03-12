import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_texts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTexts(
          data: "Welcome Back",
          textColor: AppColors.grey200,
        ).bodyBS(),

        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [AppColors.beigeDark, AppColors.beige100],
          ).createShader(bounds),
          child: const AppTexts(
            data: "Asmar Ajlouni",
            textColor: Colors.white,
          ).bodyBL(),
        ),
      ],
    ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.grey200,
              width: 1.5,
            ),
          ),
          child: CircleAvatar(
            radius: 17.5,
            backgroundColor: AppColors.grey300,
            child: Image.asset(
              AppIconPaths.user,
              width: 19,
              height: 19,
            ),
          ),
        ),
      ],
    );
  }
}