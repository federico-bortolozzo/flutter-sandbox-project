import 'package:flutter/foundation.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/model/character.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */

@immutable
class HomepageState {
  final bool isLoading;
  final int counter;
  final Character? character;
  final String? title;

  const HomepageState({this.counter = 0, required this.isLoading, this.character, this.title});

  HomepageState copyWith({int? counter, bool? isLoading, Character? character, String? title}) {
    return HomepageState(
        counter: counter ?? this.counter, isLoading: isLoading ?? this.isLoading, character: character ?? this.character, title: title ?? this.title);
  }
}
