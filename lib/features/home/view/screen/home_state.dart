import 'package:feasto_admin/features/home/view/screen/home_desk.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_design/responsive_design.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  late UserViewModel _userViewModel;
  @override
  void initState() {
    _userViewModel = context.read<UserViewModel>();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _userViewModel.getUser();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screenChangePoints: ScreenChangePoints(),
      desktop: HomeDesk(),
      tablet: SizedBox(),
    );
  }
}
