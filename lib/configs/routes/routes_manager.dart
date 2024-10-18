import 'package:feasto_admin/configs/routes/routes_name.dart';
import 'package:feasto_admin/configs/routes/routes_services.dart';
import 'package:feasto_admin/features/auth/view/screen/auth_state.dart';
import 'package:feasto_admin/features/home/view/screen/home_state.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      // case RoutesName.onboardingScreen:
      //   return CustomPageRouteSlowTransition(const OnboardScreen());
//Authentication
      case RoutesName.authState:
        return CustomPageRouteFastTransition(const AuthState());

      // case RoutesName.forgotPassword:
      //   return CustomPageRouteFastTransition(const FogotPassword());

      // case RoutesName.createScreen:
      //   return CustomPageRouteFastTransition(const CreateScreen());

      // case RoutesName.homeScreen:
      //   return CustomPageRouteSlowTransition(const HomeScreen());

      //Home
      case RoutesName.homestate:
        return CustomPageRouteFastTransition(const HomeState());
      default:
        return CustomPageRouteSlowTransition(
          const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text("Please try again later....."),
              ),
            ),
          ),
        );
    }
  }
}
