import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/features/user/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserDeskUserSelector extends StatelessWidget {
  const UserDeskUserSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;
    final userViewModel = context.read<UserViewModel>();
    return Row(
      children: [
        Container(
          height: scrHeight * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: colorScheme.primary.withOpacity(.2),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: scrWidth * 0.006, vertical: scrHeight * 0.003),
              child: Selector<UserViewModel, String>(
                selector: (p0, p1) => p1.userSelector,
                builder: (context, value, child) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            userViewModel.setUserSelector("client");
                          },
                          child: BouncingButtonWidget(
                            child: Container(
                              width: scrWidth * 0.06,
                              decoration: BoxDecoration(
                                  color: value == "client"
                                      ? colorScheme.primary
                                      : colorScheme.primary.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Client",
                                  style: textTheme.bodyLarge?.copyWith(
                                      color: value == "client"
                                          ? AppColors.white
                                          : AppColors.white.withOpacity(.6)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            userViewModel.setUserSelector("vendor");
                          },
                          child: BouncingButtonWidget(
                            child: Container(
                              width: scrWidth * 0.06,
                              decoration: BoxDecoration(
                                  color: value == "vendor"
                                      ? colorScheme.primary
                                      : colorScheme.primary.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Vendor",
                                  style: textTheme.bodyLarge?.copyWith(
                                      color: value == "vendor"
                                          ? AppColors.white
                                          : AppColors.white.withOpacity(.6)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            userViewModel.setUserSelector("admin");
                          },
                          child: BouncingButtonWidget(
                            child: Container(
                              width: scrWidth * 0.06,
                              decoration: BoxDecoration(
                                  color: value == "admin"
                                      ? colorScheme.primary
                                      : colorScheme.primary.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Admin",
                                  style: textTheme.bodyLarge?.copyWith(
                                      color: value == "admin"
                                          ? AppColors.white
                                          : AppColors.white.withOpacity(.6)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )),
        )
      ],
    );
  }
}
