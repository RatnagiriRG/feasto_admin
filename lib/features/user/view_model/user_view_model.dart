import 'dart:developer' as dev;

import 'package:feasto_admin/configs/mixins/api_state_handle_mixin.dart';
import 'package:feasto_admin/configs/mixins/api_state_handle_mixin2.dart';
import 'package:feasto_admin/data/network/network_api_services.dart';
import 'package:feasto_admin/data/response/api_response.dart';
import 'package:feasto_admin/features/user/model/get_users/get_users_model.dart';
import 'package:feasto_admin/features/user/model/user_model.dart';
import 'package:feasto_admin/features/user/repo/user_respository_impl.dart';
import 'package:flutter/material.dart';

typedef ASHM = ApiStateHandleMixin2<UserData?, List<GetUsersData>?>;

class UserViewModel extends ChangeNotifier with ASHM {
  final UserRepositoryImpl _userRespository =
      UserRepositoryImpl(NetworkApiService());

//getters
  UserData? get userData => _userData;
  String get userSelector => _userSelector;
//setters
  UserData? _userData;
  String _userSelector = "client";

  Future<void> getUser() async {
    setApiResponse = ApiResponse.loading();
    try {
      final result = await _userRespository.getUser();

      if (result != null) {
        setApiResponse = ApiResponse.completed(result);
        _userData = result;
      }
    } catch (e) {
      setApiResponse = ApiResponse.error(e.toString());
    }

    notifyListeners();
  }

  void setUserSelector(String str) async {
    _userSelector = str;
    setApiResponse1 = null;
    await getUsers(_userSelector);
    notifyListeners();
  }

  List<GetUsersData> _listOfUsers = [];
  List<GetUsersData> get listOfUsers => _listOfUsers;

  Future<void> getUsers(String str) async {
    setApiResponse1 = ApiResponse.loading();
    try {
      final result = await _userRespository.getUsers(user: str);
      if (result != null) {
        _listOfUsers = result;
        setApiResponse1 = ApiResponse.completed(result);
      }
    } catch (e) {
      dev.log(e.toString());
      setApiResponse1 = ApiResponse.error(e.toString());
    }
  }

  void disposeViewModel() {
    _userSelector = "client";
    setApiResponse = null;
  }
}
