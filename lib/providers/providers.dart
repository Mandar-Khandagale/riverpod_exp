import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/notifiers/notifiers.dart';

final countChangeNotifierProvider =
    ChangeNotifierProvider<CounterChangeNotifier>(
        (ref) => CounterChangeNotifier());

final countStateNotifierProvider =
StateNotifierProvider<CounterStateNotifier,  int>(
        (ref) => CounterStateNotifier(0));

///loading provider
final isLoadingProvider = StateProvider<bool>((ref) => false);

///element list provider
final elementListProvider =
    StateNotifierProvider<ElementListStateNotifier, List<String>>(
        (ref) => ElementListStateNotifier());