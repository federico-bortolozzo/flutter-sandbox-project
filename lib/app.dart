// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_sandbox_project/configuration/app_env.dart';
import 'package:flutter_sandbox_project/prefrences/model_theme.dart';
import 'package:flutter_sandbox_project/src/network/network_cofig.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/di/homepage_provider.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/home_page.dart';
import 'package:flutter_sandbox_project/theme/test_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> with WidgetsBindingObserver {
  late final GoRouter _router;

  _TestAppState() {
    _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (_, state) {
            return MaterialPage(
              key: state.pageKey,
              child: MultiProvider(providers: [
                ...HomepageProvider(),
              ], child: MyHomePage(title: 'Flutter Demo Home Page')),
            );
          },
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: theme.colors.surface.flowBackground, //TODO gestione tema
    ));
    return MaterialApp.router(
      title: 'TestApp',
      localizationsDelegates: const [
        // ResourcesStrings().getDelegate(context), //TODO add localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('it'),
      ],
      routerConfig: _router,
      //loginViewModel
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: 'Helvetica',
        textTheme: TextTheme(), //TODO gestione temi
      ),
    );
  }
}

void runTestApp({
  required BuildVariant buildVariant,
  // required FirebaseOptions? firebaseOptions,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
        providers: [
          Provider(create: (_) => buildVariant),
          Provider(
              create: (context) => NetworkConfig(
                    host: "https://rickandmortyapi.com/api",
                  ))
        ],
        child: ChangeNotifierProvider(
            create: (context) => ThemeNotifier(),
            child: TestTheme(
              child: FutureBuilder(
                future: initApp(/*firebaseOptions*/),
                builder: (context, data) {
                  return const TestApp();
                },
              ),
            ))),
  );
}

Future<void> initApp(/*FirebaseOptions? firebaseOptions*/) async {
  // await Firebase.initializeApp(
  //   options: firebaseOptions,
  // );

  /// Pass all uncaught "fatal" error from the framework to Crashlytics
  // FlutterError.onError = (flutterErrorDetails) => FirebaseCrashlytics.instance.recordFlutterFatalError(flutterErrorDetails);

  /// Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };

  // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);
}
