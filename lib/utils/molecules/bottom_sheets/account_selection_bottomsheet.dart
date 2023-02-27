import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_exp/model/common_model.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class AccountSelectionBottomSheet extends StatelessWidget {
  const AccountSelectionBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// upper row
          Row(
            children: [
               Expanded(
                child: Text(
                  LocaleKeys.myAccount.tr(),
                  style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ],
          ),

          ///multiple accounts
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: cardDetails.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(cardDetails[index].cardName ?? ""),
                );
              },
            ),
          ),

          ///bottom button
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(left: 16.0, bottom: 30.0, right: 16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  LocaleKeys.done.tr(),
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
