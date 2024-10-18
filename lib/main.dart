import 'package:feasto_admin/configs/routes/routes_manager.dart';
import 'package:feasto_admin/configs/routes/routes_services.dart';
import 'package:feasto_admin/configs/themes/theme.dart';
import 'package:feasto_admin/features/auth/view/screen/auth_state.dart';
import 'package:feasto_admin/features/splash_onboard/view/splash_state.dart';
import 'package:feasto_admin/multi_provider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  if (kIsWeb) {
    ResponsiveSettings.instance.setCustomSettings(
      screenChangePoints: const ScreenChangePoints(
        desktopChangePoint: 1150.0,
        tabletChangePoint: 625.0,
        watchChangePoint: 250.0,
      ),
    );
  }
  runApp(MyAppMultiProvider(myApp: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: child ?? const SizedBox(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Feasto Admin',
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: RoutesManager.generateRoute,
      home: const SplashState(),
      theme: MyAppTheme.dark,
    );
  }
}
