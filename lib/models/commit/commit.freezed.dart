// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return _Commit.fromJson(json);
}

/// @nodoc
mixin _$Commit {
  String get message => throw _privateConstructorUsedError;
  Committer get committer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitCopyWith<Commit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res, Commit>;
  @useResult
  $Res call({String message, Committer committer});

  $CommitterCopyWith<$Res> get committer;
}

/// @nodoc
class _$CommitCopyWithImpl<$Res, $Val extends Commit>
    implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? committer = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      committer: null == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as Committer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitterCopyWith<$Res> get committer {
    return $CommitterCopyWith<$Res>(_value.committer, (value) {
      return _then(_value.copyWith(committer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommitCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$$_CommitCopyWith(_$_Commit value, $Res Function(_$_Commit) then) =
      __$$_CommitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Committer committer});

  @override
  $CommitterCopyWith<$Res> get committer;
}

/// @nodoc
class __$$_CommitCopyWithImpl<$Res>
    extends _$CommitCopyWithImpl<$Res, _$_Commit>
    implements _$$_CommitCopyWith<$Res> {
  __$$_CommitCopyWithImpl(_$_Commit _value, $Res Function(_$_Commit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? committer = null,
  }) {
    return _then(_$_Commit(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      committer: null == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as Committer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Commit extends _Commit {
  const _$_Commit({required this.message, required this.committer}) : super._();

  factory _$_Commit.fromJson(Map<String, dynamic> json) =>
      _$$_CommitFromJson(json);

  @override
  final String message;
  @override
  final Committer committer;

  @override
  String toString() {
    return 'Commit(message: $message, committer: $committer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Commit &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.committer, committer) ||
                other.committer == committer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, committer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitCopyWith<_$_Commit> get copyWith =>
      __$$_CommitCopyWithImpl<_$_Commit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitToJson(
      this,
    );
  }
}

abstract class _Commit extends Commit {
  const factory _Commit(
      {required final String message,
      required final Committer committer}) = _$_Commit;
  const _Commit._() : super._();

  factory _Commit.fromJson(Map<String, dynamic> json) = _$_Commit.fromJson;

  @override
  String get message;
  @override
  Committer get committer;
  @override
  @JsonKey(ignore: true)
  _$$_CommitCopyWith<_$_Commit> get copyWith =>
      throw _privateConstructorUsedError;
}
