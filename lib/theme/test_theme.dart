import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sandbox_project/prefrences/model_theme.dart';
import 'package:flutter_sandbox_project/theme/model/app_theme.dart';
import 'package:flutter_sandbox_project/theme/res/colors.dart';
import 'package:flutter_sandbox_project/theme/res/dimensions.dart';
import 'package:flutter_sandbox_project/theme/res/images.dart';
import 'package:flutter_sandbox_project/theme/res/typography.dart';
import 'package:provider/provider.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 14/09/23.
 */
class TestTheme extends StatefulWidget {
  final Widget child;

  const TestTheme({required this.child, super.key});

  @override
  State<TestTheme> createState() => _TestThemeState();
}

class _TestThemeState extends State<TestTheme> {
  Brightness? _brightness = null;

  bool get isDark =>
      _brightness != null ? _brightness == Brightness.dark : SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.handlePlatformBrightnessChanged();
    final window = WidgetsBinding.instance.platformDispatcher;
    window.onPlatformBrightnessChanged = () {
      setState(() {
        _brightness = window.platformBrightness;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return AppTheme(
          name: 'Test',
          typography: buildAppTypography(themeNotifier.isDark != null
              ? (themeNotifier.isDark == true ? Color(0xFFFFFFFF) : Color(0xFF000000))
              : isDark ? Color(0xFFFFFFFF) : Color(0xFF000000)),
          lightColors: buildLightColors(),
          darkColors: buildDarkColors(),
          dimensions: buildAppDimensions(),
          images: buildAppImages(),
          isDark: themeNotifier.isDark != null ? themeNotifier.isDark! : isDark,
          child: widget.child,
        );
      },
    );
  }
}
