import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/home/data/model/card_details.dart';
import 'package:riverpod_exp/feature/home/provider/account_selection_notifier.dart';
import 'package:riverpod_exp/model/common_model.dart';

final cardDetailsListProvider =
    StateNotifierProvider<AccountSelectionNotifier, List<CardDetails>>(
        (ref) => AccountSelectionNotifier(ref: ref));


final accountSelectedProvider = StateNotifierProvider<SelectedAccount,int>((ref) => SelectedAccount());

final cardListProvider = Provider<List<CardDetails>>((ref) => cardDetails);
