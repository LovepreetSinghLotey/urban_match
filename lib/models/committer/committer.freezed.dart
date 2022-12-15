// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'committer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Committer _$CommitterFromJson(Map<String, dynamic> json) {
  return _Committer.fromJson(json);
}

/// @nodoc
mixin _$Committer {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitterCopyWith<Committer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitterCopyWith<$Res> {
  factory $CommitterCopyWith(Committer value, $Res Function(Committer) then) =
      _$CommitterCopyWithImpl<$Res, Committer>;
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class _$CommitterCopyWithImpl<$Res, $Val extends Committer>
    implements $CommitterCopyWith<$Res> {
  _$CommitterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommitterCopyWith<$Res> implements $CommitterCopyWith<$Res> {
  factory _$$_CommitterCopyWith(
          _$_Committer value, $Res Function(_$_Committer) then) =
      __$$_CommitterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class __$$_CommitterCopyWithImpl<$Res>
    extends _$CommitterCopyWithImpl<$Res, _$_Committer>
    implements _$$_CommitterCopyWith<$Res> {
  __$$_CommitterCopyWithImpl(
      _$_Committer _value, $Res Function(_$_Committer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? date = null,
  }) {
    return _then(_$_Committer(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Committer implements _Committer {
  const _$_Committer(
      {required this.name, required this.email, required this.date});

  factory _$_Committer.fromJson(Map<String, dynamic> json) =>
      _$$_CommitterFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  @override
  String toString() {
    return 'Committer(name: $name, email: $email, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Committer &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitterCopyWith<_$_Committer> get copyWith =>
      __$$_CommitterCopyWithImpl<_$_Committer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitterToJson(
      this,
    );
  }
}

abstract class _Committer implements Committer {
  const factory _Committer(
      {required final String name,
      required final String email,
      required final String date}) = _$_Committer;

  factory _Committer.fromJson(Map<String, dynamic> json) =
      _$_Committer.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_CommitterCopyWith<_$_Committer> get copyWith =>
      throw _privateConstructorUsedError;
}
