import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_model.freezed.dart';

part 'joke_model.g.dart';

@freezed
class JokeModel with _$JokeModel {
  const factory JokeModel({
    String? joke,
    int? id,
  }) = _JokeModel;

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}
