import 'package:flutter/material.dart';

mixin LoadingHandleMixin2 on ChangeNotifier {
  bool _isButtonLoading = false;

  bool get isButtonLoading => _isButtonLoading;

  void setIsButtonLoading(bool isLoading) {
    _isButtonLoading = isLoading;
    notifyListeners();
  }

  bool _isButtonLoading1 = false;

  bool get isButtonLoading1 => _isButtonLoading1;

  void setIsButtonLoading1(bool isLoading) {
    _isButtonLoading1 = isLoading;
    notifyListeners();
  }
}
