import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/joke/provider/joke_provider.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class JokePage extends ConsumerWidget {
  const JokePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///to get the recently updated values on joke model
    final jokeData = ref.watch(jokeStateNotifierProvider).joke;
    final isLoading = ref.watch(jokeStateNotifierProvider).isLoading;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.joke.tr()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ///to fetch new joke from getJoke method
          ref.read(jokeStateNotifierProvider.notifier).getJoke();
        },
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.refresh,color: Colors.black,),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: isLoading
              ? const CircularProgressIndicator.adaptive()
              : Text(
                  jokeData.joke ?? "-",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
        ),
      ),
    );
  }
}
