import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RefreshJoke extends ConsumerWidget {
  const RefreshJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.refresh),
    );
  }
}
