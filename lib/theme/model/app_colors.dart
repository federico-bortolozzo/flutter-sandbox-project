import 'package:flutter/material.dart';

@immutable
class AppColors {
  final AccentColors accent;
  final SurfaceColors surface;
  final FillColors fill;
  final TextColors text;

  const AppColors({
    required this.accent,
    required this.surface,
    required this.fill,
    required this.text,
  });
}

@immutable
class AccentColors {
  final Color primary;
  final Color secondary;

  AccentColors({required this.primary, required this.secondary});
}

@immutable
class SurfaceColors {
  final Color foreground;
  final Color sectionBackground;
  final Color shadow;

  SurfaceColors(
      {required this.foreground,
      required this.sectionBackground,
      required this.shadow});
}

@immutable
class FillColors {
  final Color primary;
  final Color secondary;
  final Color tertiary;

  FillColors({
    required this.primary,
    required this.secondary,
    required this.tertiary
  });
}


@immutable
class TextColors {
  final Color highlighted;
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color inactive;
  final Color error;

  TextColors(
      {required this.highlighted,
      required this.primary,
      required this.secondary,
      required this.inactive,
      required this.tertiary,
      required this.error});
}