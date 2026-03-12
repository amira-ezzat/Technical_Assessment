import 'package:flutter/material.dart';
import 'package:technical_assessment/presentation/screens/home/widgets/venue_card.dart';
import '../../../../core/styles/app_texts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../data/dummy_data.dart';

class VenueSection extends StatelessWidget {
  const VenueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const AppTexts(
            data: "Venue Selection",
            textColor: AppColors.white,
          ).bodyBM(),

          const SizedBox(height: 12),

          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {

                int crossAxisCount = 2;

                if (constraints.maxWidth > 600) {
                  crossAxisCount = 3;
                }

                if (constraints.maxWidth > 900) {
                  crossAxisCount = 4;
                }

                return GridView.builder(
                  itemCount: venues.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return VenueCard(
                      venue: venues[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}