import 'package:another_flushbar/flushbar.dart';
import 'package:feasto_admin/configs/routes/routes_name.dart';
import 'package:feasto_admin/data/local/session_controller.dart';
import 'package:feasto_admin/data/network/network_api_services.dart';
import 'package:feasto_admin/features/auth/repo/auth_repository_impl.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepositoryImpl _authRepository =
      AuthRepositoryImpl(NetworkApiService());
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _rePasswordController;
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;

  // Getters
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get rePasswordController => _rePasswordController;
  TextEditingController get nameController => _nameController;
  TextEditingController get phoneController => _phoneController;

  void initialize() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
  }

  Future<void> signIn(BuildContext context) async {
    try {
      final result = await _authRepository.signIn(
          email: _emailController.text, password: _passwordController.text);

      if (result != null) {
        SessionController().saveUserSession(result);
        _clearControllers();
        Navigator.of(context).pushReplacementNamed(RoutesName.homestate);
        disposeViewModel();
      }
    } catch (e) {
      _showErrorFlushbar(context, e.toString());
    }
  }

  void _showErrorFlushbar(BuildContext context, String message) {
    Flushbar(
      message: message,
      icon: const Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.amber,
      ),
      duration: const Duration(seconds: 3),
      leftBarIndicatorColor: Colors.amber,
    ).show(context);
  }

  void _clearControllers() {
    _emailController.clear();
    _passwordController.clear();
    _rePasswordController.clear();
    _nameController.clear();
    _phoneController.clear();
  }

  void disposeViewModel() {
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
  }
}
