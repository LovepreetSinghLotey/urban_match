// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastCommit _$LastCommitFromJson(Map<String, dynamic> json) {
  return _LastCommit.fromJson(json);
}

/// @nodoc
mixin _$LastCommit {
  Commit get commit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastCommitCopyWith<LastCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastCommitCopyWith<$Res> {
  factory $LastCommitCopyWith(
          LastCommit value, $Res Function(LastCommit) then) =
      _$LastCommitCopyWithImpl<$Res, LastCommit>;
  @useResult
  $Res call({Commit commit});

  $CommitCopyWith<$Res> get commit;
}

/// @nodoc
class _$LastCommitCopyWithImpl<$Res, $Val extends LastCommit>
    implements $LastCommitCopyWith<$Res> {
  _$LastCommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commit = null,
  }) {
    return _then(_value.copyWith(
      commit: null == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as Commit,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitCopyWith<$Res> get commit {
    return $CommitCopyWith<$Res>(_value.commit, (value) {
      return _then(_value.copyWith(commit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LastCommitCopyWith<$Res>
    implements $LastCommitCopyWith<$Res> {
  factory _$$_LastCommitCopyWith(
          _$_LastCommit value, $Res Function(_$_LastCommit) then) =
      __$$_LastCommitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Commit commit});

  @override
  $CommitCopyWith<$Res> get commit;
}

/// @nodoc
class __$$_LastCommitCopyWithImpl<$Res>
    extends _$LastCommitCopyWithImpl<$Res, _$_LastCommit>
    implements _$$_LastCommitCopyWith<$Res> {
  __$$_LastCommitCopyWithImpl(
      _$_LastCommit _value, $Res Function(_$_LastCommit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commit = null,
  }) {
    return _then(_$_LastCommit(
      commit: null == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as Commit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastCommit implements _LastCommit {
  const _$_LastCommit({required this.commit});

  factory _$_LastCommit.fromJson(Map<String, dynamic> json) =>
      _$$_LastCommitFromJson(json);

  @override
  final Commit commit;

  @override
  String toString() {
    return 'LastCommit(commit: $commit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastCommit &&
            (identical(other.commit, commit) || other.commit == commit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastCommitCopyWith<_$_LastCommit> get copyWith =>
      __$$_LastCommitCopyWithImpl<_$_LastCommit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastCommitToJson(
      this,
    );
  }
}

abstract class _LastCommit implements LastCommit {
  const factory _LastCommit({required final Commit commit}) = _$_LastCommit;

  factory _LastCommit.fromJson(Map<String, dynamic> json) =
      _$_LastCommit.fromJson;

  @override
  Commit get commit;
  @override
  @JsonKey(ignore: true)
  _$$_LastCommitCopyWith<_$_LastCommit> get copyWith =>
      throw _privateConstructorUsedError;
}
