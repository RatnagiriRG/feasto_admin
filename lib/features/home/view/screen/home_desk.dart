import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/features/home/view/widgets/desktop/home_left_panel.dart';
import 'package:flutter/material.dart';

class HomeDesk extends StatelessWidget {
  const HomeDesk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        children: [
          const HomeLeftPanel(),
          Positioned(
            right: 0,
            bottom: scrHeight * 0.02,
            top: scrHeight * 0.02,
            child: Container(
              height: scrHeight * 0.95,
              width: scrWidth * 0.8,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
