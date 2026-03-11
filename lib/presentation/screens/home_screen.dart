import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_icons.dart';
import '../../core/styles/app_texts.dart';
import '../../core/utils/app_colors.dart';
import '../../data/dummy_data.dart';
import '../widgets/loyalty_card.dart';
import '../widgets/venue_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

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
                      border: Border.all(color: AppColors.grey200, width: 1.5),
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
              ),

              const SizedBox(height: 20),

               LoyaltyCard(),

              const SizedBox(height: 25),

               AppTexts(
                data: "Venue Selection",
               textColor: AppColors.white
              ).bodyBM(),

              const SizedBox(height: 10),

              Expanded(
                child: GridView.builder(
                  itemCount: venues.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return VenueCard(venue: venues[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
