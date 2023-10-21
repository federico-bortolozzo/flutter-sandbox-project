import 'package:flutter/widgets.dart';
import 'package:flutter_sandbox_project/theme/model/app_colors.dart';
import 'package:flutter_sandbox_project/theme/model/app_dimensions.dart';
import 'package:flutter_sandbox_project/theme/model/app_images.dart';
import 'package:flutter_sandbox_project/theme/model/app_typography.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
**/

class AppTheme extends InheritedWidget {
  final String name;
  final bool isDark;
  final AppTypography typography;
  final AppImages images;

  AppColors get colors {
    if (isDark) {
      return _darkColors;
    } else {
      return _lightColors;
    }
  }

  final AppDimensions dimensions;
  late final AppColors _lightColors;
  late final AppColors _darkColors;

  AppTheme(
      {required this.name,
        required this.images,
        required this.typography,
        required AppColors lightColors,
        required AppColors darkColors,
        required this.dimensions,
        required bool this.isDark,
        required super.child}) {
    _lightColors = lightColors;
    _darkColors = darkColors;
  }

  static AppTheme of(BuildContext context) {
    AppTheme? currentTheme =
    context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (currentTheme == null) {
      throw UninitializedThemeException();
    }
    return currentTheme;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return name != oldWidget.name || isDark != oldWidget.isDark;
  }
}

class UninitializedThemeException implements Exception {}
