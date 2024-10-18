import 'package:flutter/material.dart';

mixin LoadingHandleMixin on ChangeNotifier {
  bool _isButtonLoading = false;

  bool get isButtonLoading => _isButtonLoading;

  void setIsButtonLoading(bool isLoading) {
    _isButtonLoading = isLoading;
    notifyListeners();
  }
}
