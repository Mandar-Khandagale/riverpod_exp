import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/home/provider/home_provider.dart';

class CardsWidget extends ConsumerWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardListData = ref.watch(cardDetailsListProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.30,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: cardListData.length,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 15);
            },
            itemBuilder: (context, index) {
              return AspectRatio(
                aspectRatio: 5 / 3.4,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
                        child: Text(
                          cardListData[index].cardName ?? "",
                          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 26.0),
                          child: Text(
                            cardListData[index].cardNo ?? "",
                            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
