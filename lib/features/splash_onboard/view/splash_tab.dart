import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:flutter/material.dart';

class SplashTab extends StatelessWidget {
  const SplashTab({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    ColorScheme colorScheme = context.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: scrHeight * 0.21,
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            AppImage.feastoLogo,
                            height: scrHeight * 0.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
