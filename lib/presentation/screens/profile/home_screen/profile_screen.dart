import 'package:flutter/material.dart';
import 'package:technical_assessment/core/utils/app_colors.dart';
import 'package:technical_assessment/core/utils/app_images.dart';
import '../../../../core/styles/app_texts.dart';
import '../../../../data/dummy_data.dart';
import '../widgets/history_card.dart';
import '../widgets/history_section.dart';
import '../widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const double _horizontalPadding = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: AppTexts(
          data: "Your Profile",
          textColor: AppColors.white.withOpacity(0.75),
        ).bodyBL(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {  },
              icon:  Icon(
                Icons.settings_outlined,
                size: 20,
                color: AppColors.white.withOpacity(0.71),
              ),

            ),
          )
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ProfileHeader(),

              SizedBox(height: 30),

              HistorySection(),
            ],
          ),
        ),
      ),
    );
  }
}

