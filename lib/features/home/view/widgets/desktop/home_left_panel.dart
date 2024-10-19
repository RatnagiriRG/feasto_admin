import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/constants/app_svg.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/features/home/view/widgets/desktop/home_user_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeLeftPanel extends StatelessWidget {
  const HomeLeftPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    return Positioned(
        left: 0,
        child: Container(
          height: scrHeight,
          width: scrWidth * 0.2,
          color: colorScheme.surface,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImage.feastoLogo,
                    height: scrHeight * 0.1,
                  ),
                ],
              ),
              (scrHeight * 0.012).height,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: scrHeight * 0.012),
                child: Container(
                  height: scrHeight * 0.7,
                  decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                    itemCount: homePanelItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: scrWidth * 0.005,
                            right: scrWidth * 0.005,
                            top: scrHeight * 0.01),
                        child: BouncingButtonWidget(
                          child: Container(
                            height: scrHeight * 0.08,
                            width: scrWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: colorScheme.surface.withOpacity(.2)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: scrWidth * 0.01),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: scrHeight * 0.026,
                                    width: scrHeight * 0.026,
                                    child: SvgPicture.asset(
                                      homePanelItems.elementAt(index).icon,
                                      colorFilter: ColorFilter.mode(
                                          AppColors.white.withOpacity(.7),
                                          BlendMode.srcIn),
                                    ),
                                  ),
                                  (scrWidth * 0.008).width,
                                  Text(
                                    homePanelItems.elementAt(index).text,
                                    style: textTheme.bodyLarge?.copyWith(
                                        color: AppColors.white.withOpacity(.7)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const HomeUserWidgets()
            ],
          ),
        ));
  }
}

class HomePanelItems {
  final String id;
  final String icon;
  final String text;

  HomePanelItems(this.id, this.icon, this.text);
}

List<HomePanelItems> homePanelItems = [
  HomePanelItems("dashboard01", AppSvg.homeDashBoard, "Dashboard"),
  HomePanelItems("resturant01", AppSvg.homeResturant, "Resturant"),
  HomePanelItems("payment01", AppSvg.homeFoodIcon, "Foods"),
  HomePanelItems("payment01", AppSvg.homeCategory, "Categories"),
  HomePanelItems("order01", AppSvg.homeOrder, "Order"),
  HomePanelItems("food01", AppSvg.homePayment, "Payments"),
  HomePanelItems("payment01", AppSvg.homeUser, "Users"),
];
