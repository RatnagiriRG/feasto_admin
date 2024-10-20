import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/data/response/status.dart';
import 'package:flutter/material.dart';

mixin ApiStateHandleMixin<T> on ChangeNotifier {
  ApiResponse<T>? _apiResponse;

  set setApiResponse(ApiResponse<T>? apiResponse) {
    _apiResponse = apiResponse;
    if (apiResponse == null) return;
    notifyListeners();
  }

  ApiResponse<T>? get apiResponse => _apiResponse;

  // Api respose state with out data and message
  Status? _apiLoadingStatus;

  set setApiStatusLoading(Status? status) {
    _apiLoadingStatus = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get apiLoadingStatus => _apiLoadingStatus;

  Status? _apiLoadingStatus1;

  set setApiStatusLoading1(Status? status) {
    _apiLoadingStatus1 = status;
    if (status == null) return;
    notifyListeners();
  }

  Status? get apiLoadingStatus1 => _apiLoadingStatus1;
}
