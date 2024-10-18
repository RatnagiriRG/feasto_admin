import 'package:feasto_admin/configs/components/default_screen.dart';
import 'package:feasto_admin/configs/routes/routes_name.dart';
import 'package:feasto_admin/features/splash_onboard/view/splash_desk.dart';
import 'package:feasto_admin/features/splash_onboard/view/splash_tab.dart';
import 'package:feasto_admin/features/splash_onboard/view_model/onboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';

class SplashState extends StatefulWidget {
  const SplashState({super.key});

  @override
  State<SplashState> createState() => _SplashStateState();
}

class _SplashStateState extends State<SplashState> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        OnboardViewModel().checkAuthentication(context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      screenChangePoints: ScreenChangePoints(),
      desktop: SplashDesk(),
      phone: SplashTab(),
      tablet: SplashTab(),
      watch: DefaultScreen(),
    );
  }
}
