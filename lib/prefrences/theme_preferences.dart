import 'package:shared_preferences/shared_preferences.dart';
export 'theme_preferences.dart';
export 'model_theme.dart';

class ThemePreferences {
  static const THEME_KEY = 'themeKey';

  setTheme(bool? value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (value != null)
      sharedPreferences.setBool(THEME_KEY, value);
    else
      sharedPreferences.remove(THEME_KEY);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_KEY) ?? null;
  }
}
