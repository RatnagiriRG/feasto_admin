import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:flutter/material.dart';

mixin ApiStateHandleMixin2<T, T1> on ChangeNotifier {
  ApiResponse<T>? _apiResponse;

  set setApiResponse(ApiResponse<T>? apiResponse) {
    _apiResponse = apiResponse;
    if (apiResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T>? get apiResponse => _apiResponse;

  ApiResponse<T1>? _apiResponse1;

  set setApiResponse1(ApiResponse<T1>? apiResponse) {
    _apiResponse1 = apiResponse;
    if (apiResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T1>? get apiResponse1 => _apiResponse1;

  // Api respose state with out data and message
  Status? _apiLoadingStatus;

  set setApiStatusLoading(Status? status) {
    _apiLoadingStatus = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get apiLoadingStatus => _apiLoadingStatus;
}
