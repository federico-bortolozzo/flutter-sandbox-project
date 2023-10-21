import 'package:flutter/widgets.dart';
import 'package:flutter_sandbox_project/prefrences/model_theme.dart';
import 'package:flutter_sandbox_project/src/common/typedef.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/homepage_repository.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/model/homepage_state.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class HomepageViewModel extends ChangeNotifier {
  HomepageState _state = const HomepageState(isLoading: true);
  HomepageRepository? _repository;
  NavigateCallback? navigate;
  ErrorDialogCallback? showErrorDialog;
  ThemeNotifier? _themeNotifier;

  HomepageState get state => _state;

  HomepageViewModel inject({
    required HomepageRepository repository,
    required ThemeNotifier themeNotifier
  }) {
    if (_repository == null) {
      _repository ??= repository;
    }
    _themeNotifier ??= themeNotifier;

    _init();

    return this;
  }
  changedTheme(){
    _themeNotifier?.isDark = !(_themeNotifier?.isDark == true);
  }

  void _emitState(HomepageState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<void> _init() async {
    _emitState(_state.copyWith(isLoading: false, title: "Personaggi"));
  }

  Future<void> setTitle(String title) async {
    _emitState(_state.copyWith(title: title));
  }

  Future<void> onIncrementCounter() async {
    _emitState(_state.copyWith(isLoading: true));
    var count = _state.counter + 1;
    var char = await _repository?.getCharacterById(_state.counter);
    _emitState(_state.copyWith(character: char, counter:count, isLoading: false));
  }
}