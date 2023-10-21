import 'package:flutter/material.dart';
import 'package:flutter_sandbox_project/theme/model/app_typography.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
 */
AppTypography buildAppTypography(Color defaultColor) {
  final baseTextStyle = TextStyle(fontFamily: 'Helvetica', color: defaultColor);
  return AppTypography(
    body18: baseTextStyle.copyWith(fontSize: 18, height: 1.19),
    body16m: baseTextStyle.copyWith(
      fontSize: 16,
      height: 1.22,
      fontWeight: FontWeight.w500,
      fontFamily: 'HelveticaMedium',
    ),
    body16: baseTextStyle.copyWith(fontSize: 16, height: 1.19),
    body14: baseTextStyle.copyWith(
      fontSize: 14,
      height: 1.19,
      letterSpacing: 0.5,
    ),
  );
}
