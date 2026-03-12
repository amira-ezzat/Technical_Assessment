
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technical_assessment/presentation/screens/home/widgets/venue_selection.dart';

import '../widgets/header_home.dart';
import '../widgets/loyalty_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const double _padding = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(_padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderHome(),

              const SizedBox(height: 20),

              LoyaltyCard(),

              const SizedBox(height: 24),

              const VenueSection(),
            ],
          ),
        ),
      ),
    );
  }
}