import 'package:flutter/material.dart';
import 'package:flutter_sandbox_project/theme/model/app_colors.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
 */
AppColors buildLightColors() => AppColors(
  accent: AccentColors(
    primary: Color(0xFF3E68FF),
    secondary: Color(0xFF33EBBE),
  ),
  surface: SurfaceColors(
    foreground: Color(0xFFFFFFFF),
    sectionBackground: Color(0xFFF2F2F2),
    shadow: Color(0xFF040505),
  ),
  fill: FillColors(
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFF202020),
    tertiary: Color(0xFF000000),
  ),
  text: TextColors(
    highlighted: Color(0xFF3863FF),
    primary: Color(0xFF000000),
    secondary: Color(0xFF696969),
    tertiary: Color(0xFFFFFFFF),
    inactive: Color(0xFFFFFFFF),
    error: Color(0xFFE81111),
  ),
);

AppColors buildDarkColors() => AppColors(
  accent: AccentColors(
      primary: Color(0xFF3D67FF),
      secondary: Color(0xFFFF94CA)),
  surface: SurfaceColors(
    foreground: Color(0xFF1C1C1E),
    sectionBackground: Color(0xFF121212),
    shadow: Color(0xFF040505),
  ),
  fill: FillColors(
    primary: Color(0xFF202020),
    secondary: Color(0xFFF2F2F2),
    tertiary: Color(0xFFFFFFFF),
  ),
  text: TextColors(
    highlighted: Color(0xFF5C7FFF),
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFF9C9C9C),
    inactive: Color(0xFFB5B5B5),
    tertiary: Color(0xFF000000),
    error: Color(0xFFF35353),
  ),
);
