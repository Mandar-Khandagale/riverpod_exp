import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/page/home_page.dart';
import 'package:riverpod_exp/page/user_data_page.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.userDataPage: (context) => const UserDataPage(),
  };
}