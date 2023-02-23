import 'package:riverpod_exp/feature/favourites/view/favorite_page.dart';
import 'package:riverpod_exp/feature/joke/view/joke_page.dart';
import 'package:riverpod_exp/feature/settings/view/settings_page.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/feature/home/view/home_page.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.jokePage: (context) => const JokePage(),
    Routes.favouritePage: (context) => const FavouritePage(),
    Routes.settingsPage: (context) => const SettingsPage(),
  };
}