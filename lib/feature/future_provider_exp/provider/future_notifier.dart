import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeHttpClient {
  Future<String> get(String url) async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Response from $url';
  }
}

final fakeHttpClientProvider = Provider((ref) => FakeHttpClient());

final urlProvider = StateProvider<String>((ref) => "url");


final responseProvider = FutureProvider.family<String, String>((ref, url) async {
  final httpClient = ref.read(fakeHttpClientProvider);
  return httpClient.get(url);
});