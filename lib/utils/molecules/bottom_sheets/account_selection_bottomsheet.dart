import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/home/provider/home_provider.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class AccountSelectionBottomSheet extends ConsumerWidget {
  const AccountSelectionBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardList = ref.watch(cardDetailsListProvider);
    final cardListData = ref.watch(cardDetailsListProvider.notifier);
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
                    cardListData.cancelPressed();
                  },
                  icon: const Icon(Icons.close)),
            ],
          ),

          ///multiple accounts
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: cardList.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    cardListData.getSelectedAccountDetails(
                      cardList[index].cardNo ?? "",
                      isAccountSelected:
                          cardList[index].isAccountSelected == false
                              ? true
                              : false,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cardList[index].cardName ?? "",
                                style: const TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 15.0),
                              Text(
                                cardList[index].cardNo ?? "",
                                style: const TextStyle(
                                    fontSize: 16.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        cardList[index].isAccountSelected
                            ? const Icon(Icons.check_box)
                            : const Icon(Icons.check_box_outline_blank_rounded),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          ///bottom button
          InkWell(
            onTap: () {
              cardListData.updateMainCardView();
              Navigator.pop(context);
            },
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
