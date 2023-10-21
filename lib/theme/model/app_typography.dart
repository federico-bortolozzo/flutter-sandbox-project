/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
 */
import 'package:flutter/material.dart';

@immutable
class AppTypography {
  final TextStyle body18;
  final TextStyle body16m;
  final TextStyle body16;
  final TextStyle body14;

  const AppTypography({
    required this.body18,
    required this.body16m,
    required this.body16,
    required this.body14,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is AppTypography &&
              runtimeType == other.runtimeType &&
              body18 == other.body18 &&
              body16m == other.body16m &&
              body16 == other.body16 &&
              body14 == other.body14);

  @override
  int get hashCode =>
      body18.hashCode ^
      body16m.hashCode ^
      body16.hashCode ^
      body14.hashCode;

  @override
  String toString() {
    return 'Typography{' +
        ' body18: $body18,' +
        ' body16m: $body16m,' +
        ' body16: $body16,' +
        ' body14: $body14,' +
        '}';
  }

  AppTypography copyWith({
    TextStyle? body18,
    TextStyle? body16m,
    TextStyle? body16,
    TextStyle? body14,
  }) {
    return AppTypography(
      body18: body18 ?? this.body18,
      body16m: body16m ?? this.body16m,
      body16: body16 ?? this.body16,
      body14: body14 ?? this.body14
    );
  }
}
