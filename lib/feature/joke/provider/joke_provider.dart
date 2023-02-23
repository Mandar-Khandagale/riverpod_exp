import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/core/shared_provider/shared_providers.dart';
import 'package:riverpod_exp/feature/joke/data/api/joke_api.dart';
import 'package:riverpod_exp/feature/joke/data/model/joke_state.dart';
import 'package:riverpod_exp/feature/joke/data/repository/joke_repository.dart';
import 'package:riverpod_exp/feature/joke/provider/joke_state_notifier.dart';

/// joke api provider
final jokeApiProvider =
    Provider<JokeApi>((ref) => JokeApi(ref.read(dioClientProvider)));


/// joke repository provider
final jokeRepoProvider = Provider<JokeRepository>(
    (ref) => JokeRepository(ref.read(jokeApiProvider)));


/// joke state notifier provider
final jokeStateNotifierProvider = StateNotifierProvider<JokeStateNotifier, JokeState>(
    (ref) => JokeStateNotifier(ref.read(jokeRepoProvider)));
