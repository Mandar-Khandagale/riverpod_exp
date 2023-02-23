import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/core/constants/api_endpoints.dart';
import 'package:riverpod_exp/core/shared_provider/shared_providers.dart';
import 'package:riverpod_exp/model/user_model.dart';

class CounterChangeNotifier extends ChangeNotifier{

  CounterChangeNotifier([this.count = 0]);

  int count;

  void increment(){
    count++;
    notifyListeners();
  }

  void decrement(){
    count--;
    notifyListeners();
  }

}


class CounterStateNotifier extends StateNotifier<int>{

   CounterStateNotifier(int count) : super(count);


  void increment(){
    state++;
  }

}


class ElementListStateNotifier extends StateNotifier<List<String>>{
  ElementListStateNotifier() : super([]);

  TextEditingController nameController = TextEditingController();


  ///add element in list
  void addElement(String element) {
    state = [...state,element];
  }

  ///remove element from list
  void removeElement(String name) {
    state = state.where((element) {
      return element != name;
    }).toList();
  }


}
  ///future provider
final userProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  final dioClient = ref.read(dioClientProvider);
  final res = await dioClient.get(Endpoints.userData);
  return (res.data as List).map((e) => User.fromJson(e)).toList();
});
