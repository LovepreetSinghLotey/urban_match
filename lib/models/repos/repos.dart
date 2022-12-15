/// Created by Lovepreet Singh on 14/12/22.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'repos.freezed.dart';
part 'repos.g.dart';

@freezed
class Repos with _$Repos {
  const Repos._();
  const factory Repos({
    required int id,
    required String name,
    String? description,
  }) = _Repos;

  factory Repos.fromJson(Map<String, Object?> json) =>
      _$ReposFromJson(json);
}