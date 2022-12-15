/// Created by Lovepreet Singh on 14/12/22.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urban_match/models/committer/committer.dart';

part 'commit.freezed.dart';
part 'commit.g.dart';

@freezed
class Commit with _$Commit {
  const Commit._();
  const factory Commit({
    required String message,
    required Committer committer,
  }) = _Commit;

  factory Commit.fromJson(Map<String, Object?> json) =>
      _$CommitFromJson(json);
}