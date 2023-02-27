import 'package:flutter/material.dart';
import 'package:riverpod_exp/utils/molecules/bottom_sheets/account_selection_bottomsheet.dart';
import 'package:riverpod_exp/utils/molecules/common_bottom_sheet.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mandar",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Text(
                          "32445353",
                          style: TextStyle(fontSize: 14.0),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                            onTap: () {
                              CommonBottomSheet().showBottomSheet(
                                  context: context,
                                  constraints: BoxConstraints(
                                    maxHeight: MediaQuery.of(context).size.height * 0.5,
                                  ),
                                  child: const AccountSelectionBottomSheet());
                            },
                            child: const Icon(Icons.keyboard_arrow_down)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
