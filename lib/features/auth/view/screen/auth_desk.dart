import 'package:feasto_admin/configs/components/bouncing_button_widget.dart';
import 'package:feasto_admin/configs/components/gradient_text.dart';
import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:feasto_admin/configs/themes/colors.dart';
import 'package:feasto_admin/features/auth/view/widgets/auth_textfields/auth_email_text_field.dart';
import 'package:feasto_admin/features/auth/view/widgets/auth_textfields/auth_password_text_field.dart';
import 'package:feasto_admin/features/auth/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthDesk extends StatelessWidget {
  const AuthDesk({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = context.mediaQueryHeight;
    double scrWidth = context.mediaQueryWidth;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Center(
        child: Container(
          height: scrHeight * 0.7,
          width: scrWidth * 0.3,
          decoration: BoxDecoration(
            color: colorScheme.primary.withOpacity(.4),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Center(
                child: Opacity(
                  opacity: .2,
                  child: Image.asset(AppImage.feastoLogo),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      textAlign: TextAlign.center,
                      text: "Welcome Back Admin",
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: scrHeight * 0.025,
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(170, 173, 73, 1), // Greenish color
                          Color.fromRGBO(153, 109, 78, 1), // Brownish color
                        ],
                      ),
                    ),
                    (scrHeight * 0.01).height,
                    GradientText(
                      textAlign: TextAlign.center,
                      text: "Enter your email and password for signin",
                      style: textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontSize: scrHeight * 0.012,
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(170, 173, 73, 1), // Greenish color
                          Color.fromRGBO(153, 109, 78, 1), // Brownish color
                        ],
                      ),
                    ),
                    const AuthEmailTextField(),
                    (scrHeight * 0.01).height,
                    const AuthPasswordTextField(),
                    (scrHeight * 0.025).height,
                    (scrHeight * 0.02).height,
                    GestureDetector(
                      onTap: () {
                        context.read<AuthViewModel>().signIn(context);
                      },
                      child: BouncingButtonWidget(
                        child: Container(
                          height: scrHeight * 0.06,
                          width: scrWidth * 0.85,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: textTheme.bodyMedium?.copyWith(
                                color: AppColors.white.withOpacity(.6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    (scrHeight * 0.03).height,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
