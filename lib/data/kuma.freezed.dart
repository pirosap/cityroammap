// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kuma.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kuma _$KumaFromJson(Map<String, dynamic> json) {
  return _Kuma.fromJson(json);
}

/// @nodoc
mixin _$Kuma {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  String get confirmedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KumaCopyWith<Kuma> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KumaCopyWith<$Res> {
  factory $KumaCopyWith(Kuma value, $Res Function(Kuma) then) =
      _$KumaCopyWithImpl<$Res, Kuma>;
  @useResult
  $Res call(
      {String name,
      String description,
      String url,
      String type,
      double longitude,
      double latitude,
      String confirmedTime});
}

/// @nodoc
class _$KumaCopyWithImpl<$Res, $Val extends Kuma>
    implements $KumaCopyWith<$Res> {
  _$KumaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? type = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? confirmedTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      confirmedTime: null == confirmedTime
          ? _value.confirmedTime
          : confirmedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KumaImplCopyWith<$Res> implements $KumaCopyWith<$Res> {
  factory _$$KumaImplCopyWith(
          _$KumaImpl value, $Res Function(_$KumaImpl) then) =
      __$$KumaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String url,
      String type,
      double longitude,
      double latitude,
      String confirmedTime});
}

/// @nodoc
class __$$KumaImplCopyWithImpl<$Res>
    extends _$KumaCopyWithImpl<$Res, _$KumaImpl>
    implements _$$KumaImplCopyWith<$Res> {
  __$$KumaImplCopyWithImpl(_$KumaImpl _value, $Res Function(_$KumaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? type = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? confirmedTime = null,
  }) {
    return _then(_$KumaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      confirmedTime: null == confirmedTime
          ? _value.confirmedTime
          : confirmedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KumaImpl implements _Kuma {
  const _$KumaImpl(
      {required this.name,
      required this.description,
      required this.url,
      required this.type,
      required this.longitude,
      required this.latitude,
      required this.confirmedTime});

  factory _$KumaImpl.fromJson(Map<String, dynamic> json) =>
      _$$KumaImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String url;
  @override
  final String type;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String confirmedTime;

  @override
  String toString() {
    return 'Kuma(name: $name, description: $description, url: $url, type: $type, longitude: $longitude, latitude: $latitude, confirmedTime: $confirmedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KumaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.confirmedTime, confirmedTime) ||
                other.confirmedTime == confirmedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, url, type,
      longitude, latitude, confirmedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KumaImplCopyWith<_$KumaImpl> get copyWith =>
      __$$KumaImplCopyWithImpl<_$KumaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KumaImplToJson(
      this,
    );
  }
}

abstract class _Kuma implements Kuma {
  const factory _Kuma(
      {required final String name,
      required final String description,
      required final String url,
      required final String type,
      required final double longitude,
      required final double latitude,
      required final String confirmedTime}) = _$KumaImpl;

  factory _Kuma.fromJson(Map<String, dynamic> json) = _$KumaImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get url;
  @override
  String get type;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  String get confirmedTime;
  @override
  @JsonKey(ignore: true)
  _$$KumaImplCopyWith<_$KumaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
