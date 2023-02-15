import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/providers/providers.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class AddDetailsBottomSheet extends ConsumerWidget {
  const AddDetailsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elementProvider = ref.watch(elementListProvider.notifier);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [

          ///to row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    LocaleKeys.addData.tr(),
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        splashRadius: 1.0,
                        icon: const Icon(Icons.clear)),
                  ),
                ),
              ),
            ],
          ),

          /// name text filed
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              controller: elementProvider.nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
          ),

          ///add button
          FractionallySizedBox(
            widthFactor: 0.5,
            child: ElevatedButton(
              onPressed: () {
                ref.read(elementListProvider.notifier).addElement(elementProvider.nameController.text);
              },
              child: Text(LocaleKeys.loadData.tr()),
            ),
          ),

        ],
      ),
    );
  }
}
