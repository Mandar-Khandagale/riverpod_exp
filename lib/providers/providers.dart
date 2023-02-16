import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/core/netowrk/dio_client.dart';
import 'package:riverpod_exp/notifiers/notifiers.dart';

final countChangeNotifierProvider =
    ChangeNotifierProvider<CounterChangeNotifier>(
        (ref) => CounterChangeNotifier());

final countStateNotifierProvider =
StateNotifierProvider<CounterStateNotifier,  int>(
        (ref) => CounterStateNotifier(0));

///dio instance provider
final dioInstanceProvider = Provider<Dio>((ref) {
    return Dio();
});

///dio client provider
final dioClientProvider = Provider<DioClient>((ref) {
    final dio = ref.watch(dioInstanceProvider);
    return DioClient(dio);
});

///loading provider
final isLoadingProvider = StateProvider<bool>((ref) => false);

///element list provider
final elementListProvider =
    StateNotifierProvider<ElementListStateNotifier, List<String>>(
        (ref) => ElementListStateNotifier());