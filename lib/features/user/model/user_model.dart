// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") UserData? data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "address") @Default([]) List<String> address,
    @JsonKey(name: "usertype") @Default("") String usertype,
    @JsonKey(name: "profile") @Default("") String profile,
    @JsonKey(name: "userDelflag") @Default(false) bool userDelflag,
    @JsonKey(name: "createdAt") @Default("") String createdAt,
    @JsonKey(name: "updatedAt") @Default("") String updatedAt,
    @JsonKey(name: "__v") @Default(0) int v,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
