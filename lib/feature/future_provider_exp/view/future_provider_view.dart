import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/future_provider_exp/provider/future_notifier.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class FutureProviderView extends StatelessWidget {
  const FutureProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.futureProviderView.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, _) {
              final asyncValue = ref.watch(responseProvider(ref.watch(urlProvider)));
              return asyncValue.map(
                data: (value) {
                  return Text(value.value);
                },
                error: (_) => const Text("Error"),
                loading: (_) => const CircularProgressIndicator.adaptive(),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Consumer(builder: (context, ref, _) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(urlProvider.notifier).state = "vivek";
                  },
                  child: const Text("Change Url"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
