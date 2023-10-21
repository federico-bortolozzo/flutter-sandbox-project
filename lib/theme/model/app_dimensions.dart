import 'package:flutter/material.dart';
/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
 */

@immutable
class AppDimensions {
  final AppPadding padding;
  final int stroke;

  AppDimensions({required this.stroke, required this.padding});
}

@immutable
class AppPadding {
  final double startBackgroundLogo;
  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  const AppPadding({
    required this.startBackgroundLogo,
    required this.xxs,
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xxl,
  });
}
