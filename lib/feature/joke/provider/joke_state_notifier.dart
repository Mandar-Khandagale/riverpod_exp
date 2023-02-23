import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/joke/data/model/joke_state.dart';
import 'package:riverpod_exp/feature/joke/data/repository/joke_repository.dart';

class JokeStateNotifier extends StateNotifier<JokeState> {
  JokeStateNotifier(this.jokeRepository) : super(const JokeState()) {
    getJoke();
  }

  JokeRepository jokeRepository;

  Future<void> getJoke() async {
    state = state.copyWith(isLoading: true);
    await jokeRepository.fetchJoke().then((data) {
      state = state.copyWith(joke: data, isLoading: false);
    });
  }
}
