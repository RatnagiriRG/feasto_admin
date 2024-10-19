// To parse this JSON data, do
//
//     final getUsersModel = getUsersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_users_model.freezed.dart';
part 'get_users_model.g.dart';

GetUsersModel getUsersModelFromJson(String str) =>
    GetUsersModel.fromJson(json.decode(str));

String getUsersModelToJson(GetUsersModel data) => json.encode(data.toJson());

@freezed
class GetUsersModel with _$GetUsersModel {
  const factory GetUsersModel({
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") List<GetUsersData>? data,
  }) = _GetUsersModel;

  factory GetUsersModel.fromJson(Map<String, dynamic> json) =>
      _$GetUsersModelFromJson(json);
}

@freezed
class GetUsersData with _$GetUsersData {
  const factory GetUsersData({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "address") @Default([]) List<dynamic> address,
    @JsonKey(name: "usertype") @Default("") String usertype,
    @JsonKey(name: "profile") @Default("") String profile,
    @JsonKey(name: "userDelflag") @Default(false) bool userDelflag,
    @JsonKey(name: "createdAt") @Default("") String createdAt,
    @JsonKey(name: "updatedAt") @Default("") String updatedAt,
    @JsonKey(name: "__v") @Default(0) int v,
    @JsonKey(name: "refreshToken") @Default("") String refreshToken,
  }) = _GetUsersData;

  factory GetUsersData.fromJson(Map<String, dynamic> json) =>
      _$GetUsersDataFromJson(json);
}
