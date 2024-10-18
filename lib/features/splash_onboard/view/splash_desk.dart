import 'package:feasto_admin/configs/components/gradient_text.dart';
import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:feasto_admin/configs/extensions/mediaquery_extensions.dart';
import 'package:flutter/material.dart';

class SplashDesk extends StatelessWidget {
  const SplashDesk({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = context.mediaQueryWidth;
    double scrHeight = context.mediaQueryHeight;
    ColorScheme colorScheme = context.colorScheme;
    TextTheme textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImage.feastoLogo,
                  height: scrHeight * 0.18,
                ),
              ),
              SizedBox(
                height: scrHeight * 0.13,
                child: Stack(
                  children: [
                    Center(
                      child: GradientText(
                          text: "Feasto",
                          style: textTheme.bodyMedium?.copyWith(
                            fontSize: scrHeight * 0.06,
                            color: Colors.white,
                          ),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(170, 173, 73, 1), // Greenish color
                            Color.fromRGBO(153, 109, 78, 1), // Brownish color
                          ])),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 0,
                      child: Container(
                        width: scrWidth * 0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 115, 60)),
                        child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Admin",
                              style: textTheme.bodyMedium?.copyWith(
                                fontSize: scrHeight * 0.015,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
