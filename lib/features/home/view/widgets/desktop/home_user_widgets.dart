import 'package:cached_network_image/cached_network_image.dart';
import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:feasto_admin/features/user/model/user_model.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeUserWidgets extends StatelessWidget {
  const HomeUserWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: scrHeight * 0.012, vertical: scrHeight * 0.012),
        child: Selector<UserViewModel, ApiResponse<UserData?>?>(
          selector: (p0, p1) => p1.appResponse,
          builder: (context, value, child) {
            switch (value?.status) {
              case Status.completed:
                return Container(
                  height: scrHeight * 0.1,
                  decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: scrHeight * 0.008,
                        horizontal: scrHeight * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BouncingButtonWidget(
                          child: Row(
                            children: [
                              SizedBox(
                                height: scrHeight * 0.05,
                                width: scrHeight * 0.05,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      100), // This makes the container rounded
                                  child: CachedNetworkImage(
                                    imageUrl: value?.data?.profile ?? "",
                                    fit: BoxFit
                                        .cover, // Ensure the image fits the rounded container
                                    errorWidget: (context, url, error) =>
                                        const SizedBox(),
                                  ),
                                ),
                              ),
                              (scrHeight * 0.015).width,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: scrWidth * 0.09,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      value?.data?.name ?? "",
                                      style: textTheme.bodyMedium?.copyWith(
                                        fontSize: scrHeight * 0.015,
                                        color: AppColors.white.withOpacity(.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: scrWidth * 0.09,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      value?.data?.email ?? "",
                                      style: textTheme.bodyMedium?.copyWith(
                                        fontSize: scrHeight * 0.015,
                                        color: AppColors.white.withOpacity(.7),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        BouncingButtonWidget(
                          child: Icon(
                            Icons.exit_to_app_rounded,
                            color: AppColors.white.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  ),
                );

              default:
                return const SizedBox();
            }
          },
        ));
  }
}
