import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_exp/feature/home/widgets/account_widget.dart';
import 'package:riverpod_exp/feature/home/widgets/cards_widget.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.homePage.tr()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settingsPage);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.emoji_emotions_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            ///upper account widget
            const AccountWidget(),

            ///card title widget
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  LocaleKeys.cardDetails.tr(),
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            ///multiple cards widget
            const CardsWidget(),
          ],
        ),
      ),
    );
  }
}


