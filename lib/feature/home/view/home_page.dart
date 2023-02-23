import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'package:riverpod_exp/utils/molecules/widgets/language_selection_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.riverPodExp.tr()),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 6.0),
            child: LanguageSelectionWidget(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.emoji_emotions_sharp),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ShowCount(),
        ],
      ),
    );
  }
}


class ShowCount extends ConsumerWidget {
  const ShowCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          Text("count.toString()"),
        ],
      ),
    );
  }
}

