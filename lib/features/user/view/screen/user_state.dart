import 'package:feasto_admin/configs/components/default_screen.dart';
import 'package:feasto_admin/features/user/view/screen/desktop/user_desk_screen.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_design/responsive_design.dart';

class UserState extends StatefulWidget {
  const UserState({super.key});

  @override
  State<UserState> createState() => _UserStateState();
}

class _UserStateState extends State<UserState> {
  late UserViewModel _userViewModel;

  @override
  void initState() {
    _userViewModel = context.read<UserViewModel>();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _userViewModel.getUsers("client");
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screenChangePoints: ScreenChangePoints(),
      desktop: UserDeskScreen(),
      // tablet: AuthTab(),
      // phone: AuthMobile(),
      watch: DefaultScreen(),
    );
  }
}
