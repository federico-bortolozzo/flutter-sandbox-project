import 'package:flutter_sandbox_project/app.dart';
import 'package:flutter_sandbox_project/configuration/app_env.dart';
import 'package:flutter_sandbox_project/src/main/dev/dev_firebase_options.dart';
/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
void main() {
  runTestApp(
    buildVariant: BuildVariant.prod,
    // firebaseOptions: DevFirebaseOptions.currentPlatform,
  );
}
