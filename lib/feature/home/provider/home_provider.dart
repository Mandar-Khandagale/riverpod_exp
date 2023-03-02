import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/home/data/model/card_details.dart';
import 'package:riverpod_exp/feature/home/provider/account_selection_notifier.dart';

final cardDetailsListProvider =
    StateNotifierProvider<AccountSelectionNotifier, List<CardDetails>>(
        (ref) => AccountSelectionNotifier());


final accountSelectedProvider = Provider<bool>((ref) => false);
