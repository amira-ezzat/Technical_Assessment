import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:technical_assessment/presentation/screens/home/home_screen/home_screen.dart';
import 'package:device_preview/device_preview.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/app_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        fontFamily: AppFonts.appFontFamily,
      ),
      home: HomeScreen(),
    );
  }
}
