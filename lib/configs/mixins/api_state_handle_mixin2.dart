import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:flutter/material.dart';

mixin ApiStateHandleMixin2<T, T1> on ChangeNotifier {
  ApiResponse<T>? _appResponse;

  set setAppResponse(ApiResponse<T>? appResponse) {
    _appResponse = appResponse;
    if (appResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T>? get appResponse => _appResponse;

  ApiResponse<T1>? _appResponse1;

  set setAppResponse1(ApiResponse<T1>? appResponse) {
    _appResponse1 = appResponse;
    if (appResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T1>? get appResponse1 => _appResponse1;

  // Api respose state with out data and message
  Status? _appLoadingStatus;

  set setAppStatusLoading(Status? status) {
    _appLoadingStatus = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get appLoadingStatus => _appLoadingStatus;
}
