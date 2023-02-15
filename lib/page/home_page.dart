import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/providers/providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ShowCount(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              ProviderScope.containerOf(context).read(countStateNotifierProvider.notifier).increment();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.minimize),
            onPressed: () {
              ProviderScope.containerOf(context).read(countChangeNotifierProvider).decrement();
            },
          ),
        ],
      ),
    );
  }
}


class ShowCount extends ConsumerWidget {
  const ShowCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countStateNotifierProvider);
    return Center(
      child: Column(
        children: [
          Text(count.toString()),
        ],
      ),
    );
  }
}

