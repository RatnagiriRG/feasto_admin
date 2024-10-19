// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUsersModelImpl _$$GetUsersModelImplFromJson(Map<String, dynamic> json) =>
    _$GetUsersModelImpl(
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetUsersData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetUsersModelImplToJson(_$GetUsersModelImpl instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data,
    };

_$GetUsersDataImpl _$$GetUsersDataImplFromJson(Map<String, dynamic> json) =>
    _$GetUsersDataImpl(
      id: json['_id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      address: json['address'] as List<dynamic>? ?? const [],
      usertype: json['usertype'] as String? ?? "",
      profile: json['profile'] as String? ?? "",
      userDelflag: json['userDelflag'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      v: (json['__v'] as num?)?.toInt() ?? 0,
      refreshToken: json['refreshToken'] as String? ?? "",
    );

Map<String, dynamic> _$$GetUsersDataImplToJson(_$GetUsersDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'usertype': instance.usertype,
      'profile': instance.profile,
      'userDelflag': instance.userDelflag,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'refreshToken': instance.refreshToken,
    };
