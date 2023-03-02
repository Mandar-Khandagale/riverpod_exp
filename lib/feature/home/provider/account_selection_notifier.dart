import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/home/data/model/card_details.dart';
import 'package:riverpod_exp/model/common_model.dart';

class AccountSelectionNotifier extends StateNotifier<List<CardDetails>> {
  AccountSelectionNotifier() : super([]) {
    getCardDetailsList();
  }

  ///to store list of card details in state
  getCardDetailsList() {
    state = cardDetails;
  }

  ///to get selected account details
  getSelectedAccountDetails(String cardNo, {required bool isAccountSelected}) {
    CardDetails selectedCard = const CardDetails();
    List<CardDetails> notSelectedCard = [];

    for (int i = 0; i < state.length; i++) {
      if (state[i].cardNo == cardNo) {
        selectedCard = state[i].copyWith(isAccountSelected: isAccountSelected);
      } else if (state[i].isAccountSelected == true) {
        notSelectedCard.add(state[i].copyWith(isAccountSelected: false));
      }
    }

    state = [
      for (int i = 0; i < state.length; i++)
        if (state[i].cardNo == cardNo)
          selectedCard
        else if (state[i].isAccountSelected == true)
          ...notSelectedCard
        else
          state[i]
    ];
  }

  ///to update the main card view
  updateMainCardView() {
    var selectedCard = const CardDetails();
    for (int i = 0; i < state.length; i++) {
      if (state[i].isAccountSelected == true) {
        selectedCard = state[i];
        state.remove(state[i]);
        state.insert(0, selectedCard);

        state = [...state];
      }else{
        state = [...state];
      }
    }
  }

  ///don't update state
  cancelPressed() {
    state = [...state];
  }

}
