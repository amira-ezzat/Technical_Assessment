import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';

class AppTexts {
  const AppTexts({
    required this.data,
    this.textColor = Colors.white,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.selectionColor,
    this.semanticsLabel,
    this.textDirection,
    this.textWidthBasis,
    this.textScaler,
    this.textDecoration,
    this.wordSpacing,
    this.letterSpacing,
    this.lineHeight, // Added lineHeight parameter
  });

  final String data;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? selectionColor;
  final String? semanticsLabel;
  final TextDirection? textDirection;
  final TextWidthBasis? textWidthBasis;
  final TextScaler? textScaler;
  final TextDecoration? textDecoration;
  final double? wordSpacing, letterSpacing;
  final double? lineHeight; // New lineHeight property

  Text _font({required FontWeight fontWeight, required double fontSize}) {
    return Text(
      data,
      softWrap: true,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
      textScaler: textScaler,
      style: TextStyle(
        fontFamily: AppFonts.appFontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor,
        decoration: textDecoration,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        height: lineHeight,
      ),
    );
  }



  Text headingBM() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.headingM);
  }

  Text headingBS() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.headingS);
  }


  /// Body Font Sizes:


  // Body Bold:
  Text bodyBXL() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.bodyXL);
  }

  Text bodyBL() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.bodyL);
  }

  Text bodyBM() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.bodyM);
  }

  Text bodyBS() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.bodyS);
  }
  Text bodyBSS() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.bodySS);
  }

  // Body SemiBold:
  Text bodyB9() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.body9);
  }

  Text bodySBL() {
    return _font(fontWeight: AppFonts.semiBold, fontSize: AppFonts.bodyL);
  }
  Text headingBSS() {
    return _font(fontWeight: AppFonts.bold, fontSize: AppFonts.headingSS);
  }
  Text bodySBM() {
    return _font(fontWeight: AppFonts.semiBold, fontSize: AppFonts.bodyM);
  }

  Text bodySBS() {
    return _font(fontWeight: AppFonts.semiBold, fontSize: AppFonts.bodyS);
  }

  // Body Medium:
  Text bodyMXL() {
    return _font(fontWeight: AppFonts.medium, fontSize: AppFonts.bodyXL);
  }

  Text bodyML() {
    return _font(fontWeight: AppFonts.medium, fontSize: AppFonts.bodyL);
  }

  Text bodyMM() {
    return _font(fontWeight: AppFonts.medium, fontSize: AppFonts.bodyM);
  }

  Text bodyMS() {
    return _font(fontWeight: AppFonts.medium, fontSize: AppFonts.bodyS);
  }

  // Body Regular:
  Text bodyRXL() {
    return _font(fontWeight: AppFonts.regular, fontSize: AppFonts.bodyXL);
  }

  Text bodyRL() {
    return _font(fontWeight: AppFonts.regular, fontSize: AppFonts.bodyL);
  }

  Text bodyRM() {
    return _font(fontWeight: AppFonts.regular, fontSize: AppFonts.bodyM);
  }

  Text bodyRS() {
    return _font(fontWeight: AppFonts.regular, fontSize: AppFonts.bodyS);
  }
  Text bodyMSS() {
    return _font(fontWeight: AppFonts.medium, fontSize: AppFonts.bodySS);
  }

}
