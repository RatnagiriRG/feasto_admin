import 'package:feasto_admin/configs/constants/app_image.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // This will make the animation loop infinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: RotationTransition(
        turns: _controller,
        child: Image.asset(
          AppImage.feastoLogo,
          height: screenHeight * 0.12,
          width: screenHeight * 0.12, // Keeping the square ratio
        ),
      ),
    );
  }
}

class ErrorLoadingScreen extends StatefulWidget {
  const ErrorLoadingScreen({Key? key}) : super(key: key);

  @override
  _ErrorLoadingScreenState createState() => _ErrorLoadingScreenState();
}

class _ErrorLoadingScreenState extends State<ErrorLoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // This will make the animation loop infinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: RotationTransition(
        turns: _controller,
        child: Image.asset(
          color: Colors.deepOrange,
          AppImage.feastoLogo,
          height: screenHeight * 0.12,
          width: screenHeight * 0.12, // Keeping the square ratio
        ),
      ),
    );
  }
}
