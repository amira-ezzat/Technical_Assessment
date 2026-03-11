import 'package:technical_assessment/core/utils/app_images.dart';

import '../model/loyalty_model.dart';
import '../model/venue_model.dart';

List<Venue> venues = [
  Venue(
    name: "Ceano",
    category: "Nikkei",
    image: AppImagesPaths.ceano,
  ),
  Venue(
    name: "Nobiko",
    category: "Restaurant",
    image: AppImagesPaths.nobiko,
  ),
  Venue(
    name: "Dovely",
    category: "Casual",
    image: AppImagesPaths.dovely,
  ),
  Venue(
    name: "Olivestree",
    category: "Bakery",
    image: AppImagesPaths.olivestree,
  ),
];

List<LoyaltyHistory> history = List.generate(
  4,
      (index) => LoyaltyHistory(
    restaurant: "Nobiko Bistro",
    date: "06 Jan, 2025",
    price: "125.32 JD",
    credits: 325,
    image: "assets/food.jpg",
  ),
);