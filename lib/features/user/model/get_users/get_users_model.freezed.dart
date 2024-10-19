// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUsersModel _$GetUsersModelFromJson(Map<String, dynamic> json) {
  return _GetUsersModel.fromJson(json);
}

/// @nodoc
mixin _$GetUsersModel {
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<GetUsersData>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetUsersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUsersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUsersModelCopyWith<GetUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersModelCopyWith<$Res> {
  factory $GetUsersModelCopyWith(
          GetUsersModel value, $Res Function(GetUsersModel) then) =
      _$GetUsersModelCopyWithImpl<$Res, GetUsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") List<GetUsersData>? data});
}

/// @nodoc
class _$GetUsersModelCopyWithImpl<$Res, $Val extends GetUsersModel>
    implements $GetUsersModelCopyWith<$Res> {
  _$GetUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUsersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetUsersData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUsersModelImplCopyWith<$Res>
    implements $GetUsersModelCopyWith<$Res> {
  factory _$$GetUsersModelImplCopyWith(
          _$GetUsersModelImpl value, $Res Function(_$GetUsersModelImpl) then) =
      __$$GetUsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") List<GetUsersData>? data});
}

/// @nodoc
class __$$GetUsersModelImplCopyWithImpl<$Res>
    extends _$GetUsersModelCopyWithImpl<$Res, _$GetUsersModelImpl>
    implements _$$GetUsersModelImplCopyWith<$Res> {
  __$$GetUsersModelImplCopyWithImpl(
      _$GetUsersModelImpl _value, $Res Function(_$GetUsersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUsersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetUsersModelImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetUsersData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUsersModelImpl implements _GetUsersModel {
  const _$GetUsersModelImpl(
      {@JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") final List<GetUsersData>? data})
      : _data = data;

  factory _$GetUsersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUsersModelImplFromJson(json);

  @override
  @JsonKey(name: "msg")
  final String? msg;
  final List<GetUsersData>? _data;
  @override
  @JsonKey(name: "data")
  List<GetUsersData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetUsersModel(msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersModelImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, msg, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetUsersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersModelImplCopyWith<_$GetUsersModelImpl> get copyWith =>
      __$$GetUsersModelImplCopyWithImpl<_$GetUsersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUsersModelImplToJson(
      this,
    );
  }
}

abstract class _GetUsersModel implements GetUsersModel {
  const factory _GetUsersModel(
          {@JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "data") final List<GetUsersData>? data}) =
      _$GetUsersModelImpl;

  factory _GetUsersModel.fromJson(Map<String, dynamic> json) =
      _$GetUsersModelImpl.fromJson;

  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  List<GetUsersData>? get data;

  /// Create a copy of GetUsersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUsersModelImplCopyWith<_$GetUsersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUsersData _$GetUsersDataFromJson(Map<String, dynamic> json) {
  return _GetUsersData.fromJson(json);
}

/// @nodoc
mixin _$GetUsersData {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  List<dynamic> get address => throw _privateConstructorUsedError;
  @JsonKey(name: "usertype")
  String get usertype => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  String get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "userDelflag")
  bool get userDelflag => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;
  @JsonKey(name: "refreshToken")
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this GetUsersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUsersDataCopyWith<GetUsersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersDataCopyWith<$Res> {
  factory $GetUsersDataCopyWith(
          GetUsersData value, $Res Function(GetUsersData) then) =
      _$GetUsersDataCopyWithImpl<$Res, GetUsersData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") List<dynamic> address,
      @JsonKey(name: "usertype") String usertype,
      @JsonKey(name: "profile") String profile,
      @JsonKey(name: "userDelflag") bool userDelflag,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "updatedAt") String updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "refreshToken") String refreshToken});
}

/// @nodoc
class _$GetUsersDataCopyWithImpl<$Res, $Val extends GetUsersData>
    implements $GetUsersDataCopyWith<$Res> {
  _$GetUsersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? usertype = null,
    Object? profile = null,
    Object? userDelflag = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      usertype: null == usertype
          ? _value.usertype
          : usertype // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      userDelflag: null == userDelflag
          ? _value.userDelflag
          : userDelflag // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUsersDataImplCopyWith<$Res>
    implements $GetUsersDataCopyWith<$Res> {
  factory _$$GetUsersDataImplCopyWith(
          _$GetUsersDataImpl value, $Res Function(_$GetUsersDataImpl) then) =
      __$$GetUsersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") List<dynamic> address,
      @JsonKey(name: "usertype") String usertype,
      @JsonKey(name: "profile") String profile,
      @JsonKey(name: "userDelflag") bool userDelflag,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "updatedAt") String updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "refreshToken") String refreshToken});
}

/// @nodoc
class __$$GetUsersDataImplCopyWithImpl<$Res>
    extends _$GetUsersDataCopyWithImpl<$Res, _$GetUsersDataImpl>
    implements _$$GetUsersDataImplCopyWith<$Res> {
  __$$GetUsersDataImplCopyWithImpl(
      _$GetUsersDataImpl _value, $Res Function(_$GetUsersDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? usertype = null,
    Object? profile = null,
    Object? userDelflag = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? refreshToken = null,
  }) {
    return _then(_$GetUsersDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      usertype: null == usertype
          ? _value.usertype
          : usertype // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      userDelflag: null == userDelflag
          ? _value.userDelflag
          : userDelflag // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUsersDataImpl implements _GetUsersData {
  const _$GetUsersDataImpl(
      {@JsonKey(name: "_id") this.id = "",
      @JsonKey(name: "name") this.name = "",
      @JsonKey(name: "email") this.email = "",
      @JsonKey(name: "phone") this.phone = "",
      @JsonKey(name: "address") final List<dynamic> address = const [],
      @JsonKey(name: "usertype") this.usertype = "",
      @JsonKey(name: "profile") this.profile = "",
      @JsonKey(name: "userDelflag") this.userDelflag = false,
      @JsonKey(name: "createdAt") this.createdAt = "",
      @JsonKey(name: "updatedAt") this.updatedAt = "",
      @JsonKey(name: "__v") this.v = 0,
      @JsonKey(name: "refreshToken") this.refreshToken = ""})
      : _address = address;

  factory _$GetUsersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUsersDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phone")
  final String phone;
  final List<dynamic> _address;
  @override
  @JsonKey(name: "address")
  List<dynamic> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  @JsonKey(name: "usertype")
  final String usertype;
  @override
  @JsonKey(name: "profile")
  final String profile;
  @override
  @JsonKey(name: "userDelflag")
  final bool userDelflag;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;
  @override
  @JsonKey(name: "refreshToken")
  final String refreshToken;

  @override
  String toString() {
    return 'GetUsersData(id: $id, name: $name, email: $email, phone: $phone, address: $address, usertype: $usertype, profile: $profile, userDelflag: $userDelflag, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.usertype, usertype) ||
                other.usertype == usertype) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.userDelflag, userDelflag) ||
                other.userDelflag == userDelflag) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      const DeepCollectionEquality().hash(_address),
      usertype,
      profile,
      userDelflag,
      createdAt,
      updatedAt,
      v,
      refreshToken);

  /// Create a copy of GetUsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersDataImplCopyWith<_$GetUsersDataImpl> get copyWith =>
      __$$GetUsersDataImplCopyWithImpl<_$GetUsersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUsersDataImplToJson(
      this,
    );
  }
}

abstract class _GetUsersData implements GetUsersData {
  const factory _GetUsersData(
          {@JsonKey(name: "_id") final String id,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "email") final String email,
          @JsonKey(name: "phone") final String phone,
          @JsonKey(name: "address") final List<dynamic> address,
          @JsonKey(name: "usertype") final String usertype,
          @JsonKey(name: "profile") final String profile,
          @JsonKey(name: "userDelflag") final bool userDelflag,
          @JsonKey(name: "createdAt") final String createdAt,
          @JsonKey(name: "updatedAt") final String updatedAt,
          @JsonKey(name: "__v") final int v,
          @JsonKey(name: "refreshToken") final String refreshToken}) =
      _$GetUsersDataImpl;

  factory _GetUsersData.fromJson(Map<String, dynamic> json) =
      _$GetUsersDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "address")
  List<dynamic> get address;
  @override
  @JsonKey(name: "usertype")
  String get usertype;
  @override
  @JsonKey(name: "profile")
  String get profile;
  @override
  @JsonKey(name: "userDelflag")
  bool get userDelflag;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(name: "refreshToken")
  String get refreshToken;

  /// Create a copy of GetUsersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUsersDataImplCopyWith<_$GetUsersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
