import 'package:feasto_admin/configs/components/default_screen.dart';
import 'package:feasto_admin/features/auth/view/screen/auth_desk.dart';
import 'package:feasto_admin/features/auth/view/screen/auth_mobile.dart';
import 'package:feasto_admin/features/auth/view/screen/auth_tab.dart';
import 'package:feasto_admin/features/auth/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_design/responsive_design.dart';

class AuthState extends StatefulWidget {
  const AuthState({super.key});

  @override
  State<AuthState> createState() => _AuthStateState();
}

class _AuthStateState extends State<AuthState> {
  late AuthViewModel _authViewModel;
  @override
  void initState() {
    _authViewModel = context.read<AuthViewModel>();
    _authViewModel.initialize();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screenChangePoints: ScreenChangePoints(),
      desktop: AuthDesk(),
      tablet: AuthTab(),
      phone: AuthMobile(),
      watch: DefaultScreen(),
    );
  }
}
