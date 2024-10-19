import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/constants/app_svg.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/features/home/view/widgets/desktop/home_left_panel.dart';
import 'package:feasto_admin/features/user/view/screen/desktop/user_desk_screen.dart';
import 'package:feasto_admin/features/user/view/screen/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            child: const HomeRightpanel(),
          )
        ],
      ),
    );
  }
}

class HomeRightpanel extends StatelessWidget {
  const HomeRightpanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    return Container(
      height: scrHeight * 0.95,
      width: scrWidth * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: scrWidth * 0.008),
        child: const SizedBox(
          // color: Colors.amber,
          child: UserState(),
        ),
      ),
    );
  }
}

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: scrHeight * 0.015),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: colorScheme.primary.withOpacity(.7),
                  borderRadius: BorderRadius.circular(8)),
              //
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: scrWidth * 0.01, vertical: scrHeight * 0.008),
                child: Row(
                  children: [
                    SizedBox(
                        height: scrHeight * 0.02,
                        width: scrHeight * 0.02,
                        child: SvgPicture.asset(
                          AppSvg.homeUser,
                          colorFilter: ColorFilter.mode(
                              AppColors.white, BlendMode.srcIn),
                        )),
                    (scrWidth * 0.006).width,
                    Text(
                      "Users",
                      style: textTheme.bodyLarge?.copyWith(
                          color: AppColors.white,
                          fontSize: scrHeight * 0.02,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
