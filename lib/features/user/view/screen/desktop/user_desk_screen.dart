import 'package:cached_network_image/cached_network_image.dart';
import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/components/loading_screen.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:feasto_admin/features/home/view/screen/home_desk.dart';
import 'package:feasto_admin/features/user/model/get_users/get_users_model.dart';
import 'package:feasto_admin/features/user/view/widgets/desktop/user_desk_user_selector.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserDeskScreen extends StatelessWidget {
  const UserDeskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;

    return Column(
      children: [
        // (scrHeight * 0.012).height,
        AppBarWidgets(),

        UserDeskUserSelector(),
        (scrHeight * 0.02).height,

        Row(
          children: [
            Container(
              height: scrHeight * 0.75,
              width: scrWidth * 0.3,
              decoration: BoxDecoration(
                  color: colorScheme.primary.withOpacity(.06),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: scrHeight * 0.023,
                        horizontal: scrWidth * 0.012),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: scrHeight * 0.037,
                          width: scrWidth * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.9),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          height: scrHeight * 0.037,
                          width: scrWidth * 0.07,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.9),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BouncingButtonWidget(
                                child: Container(
                                  height: scrHeight * 0.037,
                                  width: scrWidth * 0.017,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.black.withOpacity(.1)),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      size: scrHeight * 0.02,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: scrHeight * 0.037,
                                width: scrWidth * 0.017,
                                decoration: BoxDecoration(),
                                child: Center(
                                  child: Text("1  "),
                                ),
                              ),
                              BouncingButtonWidget(
                                child: Container(
                                  height: scrHeight * 0.037,
                                  width: scrWidth * 0.017,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.black.withOpacity(.1)),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: scrHeight * 0.02,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    height: scrHeight * 0.65,
                    width: scrWidth * 0.5,
                    child: Selector<UserViewModel,
                        ApiResponse<List<GetUsersData>?>?>(
                      selector: (p0, p1) => p1.apiResponse1,
                      builder: (context, value, child) {
                        final userData = value?.data ?? [];
                        switch (value?.status) {
                          case Status.loading:
                            return const LoadingScreen();

                          case Status.error:
                            return const ErrorLoadingScreen();

                          case Status.completed:
                            return ListView.builder(
                              itemCount: value?.data?.length ?? 0,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: scrHeight * 0.009,
                                      horizontal: scrWidth * 0.01),
                                  child: Container(
                                      width: scrWidth,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: scrHeight * 0.018,
                                            horizontal: scrWidth * 0.01),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: ClipOval(
                                                    child: CachedNetworkImage(
                                                      imageUrl: userData
                                                          .elementAt(index)
                                                          .profile,
                                                      width: scrHeight * 0.05,
                                                      height: scrHeight * 0.05,
                                                      fit: BoxFit.cover,
                                                      placeholder: (context,
                                                              url) =>
                                                          const CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          const Icon(Icons
                                                              .error), // Error widget
                                                    ),
                                                  ),
                                                ),
                                                (scrWidth * 0.01).width,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      userData
                                                          .elementAt(index)
                                                          .name,
                                                      style: textTheme.bodyLarge
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize:
                                                                  scrHeight *
                                                                      0.017),
                                                    ),
                                                    Text(
                                                      userData
                                                          .elementAt(index)
                                                          .email,
                                                      style: textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize:
                                                                  scrHeight *
                                                                      0.013),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const BouncingButtonWidget(
                                                child: Icon(Icons.edit_square))
                                          ],
                                        ),
                                      )),
                                );
                              },
                            );
                          default:
                            return const SizedBox();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
