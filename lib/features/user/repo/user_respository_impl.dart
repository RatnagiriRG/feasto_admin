import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:feasto_admin/configs/app_urls.dart';
import 'package:feasto_admin/data/network/app_exception.dart';
import 'package:feasto_admin/data/network/base_network_api_services.dart';
import 'package:feasto_admin/features/user/model/user_model.dart';
import 'package:feasto_admin/features/user/repo/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final BaseNetWorkApiService _apiService;

  UserRepositoryImpl(this._apiService);

  @override
  Future<UserData?> getUser() async {
    try {
      final response = await _apiService.get(AppUrls.user);
      final result = UserModel.fromJson(response);
      return result.data;
    } on DioException catch (e) {
      final error = DioExceptions.fromDioException(e);
      final exceptionMessage = e.response?.data["error"];
      throw exceptionMessage ?? error.errorMessage;
    }
  }
}
