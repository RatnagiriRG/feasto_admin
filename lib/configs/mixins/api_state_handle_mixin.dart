import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:flutter/material.dart';

mixin ApiStateHandleMixin<T> on ChangeNotifier {
  ApiResponse<T>? _appResponse;

  set setAppResponse(ApiResponse<T>? appResponse) {
    _appResponse = appResponse;
    if (appResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T>? get appResponse => _appResponse;

  // Api respose state with out data and message
  Status? _appLoadingStatus;

  set setAppStatusLoading(Status? status) {
    _appLoadingStatus = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get appLoadingStatus => _appLoadingStatus;

  Status? _appLoadingStatus1;

  set setAppStatusLoading1(Status? status) {
    _appLoadingStatus1 = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get appLoadingStatus1 => _appLoadingStatus1;
}
