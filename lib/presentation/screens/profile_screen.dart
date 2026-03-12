import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_colors.dart';
import 'package:technical_assessment/core/utils/app_images.dart';
import '../../core/styles/app_texts.dart';
import '../../data/dummy_data.dart';
import '../widgets/history_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title:  AppTexts(data: "Your Profile",
          textColor: AppColors.white.withOpacity(0.75)
        ).bodyBL(),
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.settings_outlined,size: 20,
            color:  AppColors.white.withOpacity(0.71),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// profile info
            Row(
              children: [

                 CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(AppImagesPaths.profile),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [

                      AppTexts(
                       data:  "Asmar Ajlouni",
                        textColor: AppColors.white,
                      ).bodyBSS(),

                      SizedBox(height: 4),

                      AppTexts(
                       data:  "+962 234 567 2349",
                        textColor: AppColors.beigeDark
                      ).bodyB9(),
                    ],
                  ),
                ),

                 AppTexts(
                  data: "Edit",
                  textColor: AppColors.beige100
                ).bodyB9()
              ],
            ),

            const SizedBox(height: 30),

            /// loyalty history title
             AppTexts(
             data: "Loyalty History",
              textColor: AppColors.white.withOpacity(0.82),

            ).bodyBM(),

            const SizedBox(height: 16),

            /// Cards
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {

                  final item = history[index];

                  return HistoryCard(history: item);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}