import 'dart:developer' as dev;

import 'package:feasto_admin/configs/mixins/api_state_handle_mixin.dart';
import 'package:feasto_admin/data/network/network_api_services.dart';
import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/features/user/model/user_model.dart';
import 'package:feasto_admin/features/user/repo/user_respository_impl.dart';
import 'package:flutter/material.dart';

typedef ASHM = ApiStateHandleMixin<UserData?>;

class UserViewModel extends ChangeNotifier with ASHM {
  final UserRepositoryImpl _userRespository =
      UserRepositoryImpl(NetworkApiService());

//getters
  UserData? get userData => _userData;
//setters
  UserData? _userData;

  Future<void> getUser() async {
    setAppResponse = ApiResponse.loading();
    try {
      final result = await _userRespository.getUser();

      if (result != null) {
        setAppResponse = ApiResponse.completed(result);
        _userData = result;
      }
    } catch (e) {
      setAppResponse = ApiResponse.error(e.toString());
    }

    notifyListeners();
  }
}
