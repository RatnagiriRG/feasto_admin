import 'package:feasto_admin/features/auth/view_model/auth_view_model.dart';
import 'package:feasto_admin/features/home/view_model/home_view_model.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppMultiProvider extends StatelessWidget {
  const MyAppMultiProvider({super.key, required this.myApp});
  final Widget myApp;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        )
      ],
      child: myApp,
    );
  }
}
