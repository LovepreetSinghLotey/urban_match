/// Created by Lovepreet Singh on 14/12/22.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urban_match/models/commit/commit.dart';

part 'last_commit.freezed.dart';
part 'last_commit.g.dart';

@freezed
class LastCommit with _$LastCommit {
  const factory LastCommit({
    required Commit commit,
  }) = _LastCommit;

  factory LastCommit.fromJson(Map<String, Object?> json) =>
      _$LastCommitFromJson(json);
}