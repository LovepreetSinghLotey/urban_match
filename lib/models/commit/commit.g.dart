// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Commit _$$_CommitFromJson(Map<String, dynamic> json) => _$_Commit(
      message: json['message'] as String,
      committer: Committer.fromJson(json['committer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommitToJson(_$_Commit instance) => <String, dynamic>{
      'message': instance.message,
      'committer': instance.committer,
    };
