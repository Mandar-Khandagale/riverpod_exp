import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/providers/providers.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'package:riverpod_exp/utils/molecules/bottomsheet/add_details_bottomsheet.dart';
import 'package:riverpod_exp/utils/molecules/common_bottom_sheet.dart';
import 'package:riverpod_exp/utils/molecules/widgets/language_selection_widget.dart';

class MainHomePage extends ConsumerWidget {
  const MainHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elementProvider = ref.watch(elementListProvider.notifier);
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.title.tr()),
        actions: const [
           LanguageSelectionWidget(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Consumer(
                  builder: (BuildContext context, WidgetRef ref, Widget? child) {
                    var elementList = ref.watch(elementListProvider);
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: elementList.length,
                      itemBuilder: (context, index) {
                        return Center(child: Text(elementList[index],style: const TextStyle(fontSize: 20.0),));
                      },
                    );
                  },
                ),
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return SizedBox(
                    height: size.height * 0.05,
                    width: size.width * 0.35,
                    child: ElevatedButton(
                      onPressed: () {
                        ref.read(elementListProvider.notifier).removeElement(elementProvider.nameController.text);
                      },
                      child: Text(LocaleKeys.removeData.tr()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CommonBottomSheet().showBottomSheet(
              context: context, child: const AddDetailsBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

