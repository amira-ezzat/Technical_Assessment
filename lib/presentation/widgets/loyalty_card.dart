import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_icons.dart';
import 'package:technical_assessment/core/utils/app_images.dart';
import 'package:technical_assessment/presentation/screens/profile_screen.dart';

import '../../core/styles/app_texts.dart';
import '../../core/utils/app_colors.dart';

class LoyaltyCard extends StatelessWidget {
  final List<String> images = [
    AppImagesPaths.order1,
    AppImagesPaths.order2,
    AppImagesPaths.order3,

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.grey300,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTexts(
                    data: "AlterNow",
                    textColor: AppColors.white.withOpacity(0.5),
                  ).bodyBS(),
                  AppTexts(
                    data: "Loyalty Points",
                    textColor: AppColors.white,
                  ).bodyBM(),
                ],
              ),
              IconButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  icon:  ImageIcon(
                    AssetImage(AppIconPaths.user),
                    size: 19,
                    color: AppColors.white,
                  ),)

            ],
          ),

          const SizedBox(height: 10),

          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [AppColors.beigeDark, AppColors.beige100],
            ).createShader(bounds),
            child: AppTexts(
              data: "21,750",
              textColor: AppColors.white,
            ).headingBS(),
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 20,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.beigeDark, AppColors.beige100],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Total Orders  ",
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.57),
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "24",
                  style: TextStyle(
                    color: AppColors.beige300,
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(images.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(right: index == images.length - 1 ? 0 : 8),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Container(
                width: 67,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTexts(
                      data: "More details",
                      textColor: AppColors.white,
                    ).bodyMSS(),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.white,
                      size: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
