import 'package:riverpod_exp/feature/joke/data/model/joke_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_state.freezed.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState({
    @Default(JokeModel()) JokeModel joke,
    @Default(true) bool isLoading,
  }) = _JokeState;


}