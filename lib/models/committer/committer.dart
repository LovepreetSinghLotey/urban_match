/// Created by Lovepreet Singh on 14/12/22.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'committer.freezed.dart';
part 'committer.g.dart';

@freezed
class Committer with _$Committer {
  const factory Committer({
    required String name,
    required String email,
    required String date,
  }) = _Committer;

  factory Committer.fromJson(Map<String, Object?> json) =>
      _$CommitterFromJson(json);
}