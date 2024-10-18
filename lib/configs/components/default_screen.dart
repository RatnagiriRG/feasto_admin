import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/features/splash_onboard/view/splash_desk.dart';
import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = context.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
    );
  }
}
