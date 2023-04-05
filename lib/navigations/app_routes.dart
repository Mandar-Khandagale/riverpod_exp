import 'package:flutter/material.dart';
import 'package:riverpod_exp/feature/favourites/view/favorite_page.dart';
import 'package:riverpod_exp/feature/future_provider_exp/view/future_provider_view.dart';
import 'package:riverpod_exp/feature/hooks/hooks_exp.dart';
import 'package:riverpod_exp/feature/joke/view/joke_page.dart';
import 'package:riverpod_exp/feature/products/view/product_page.dart';
import 'package:riverpod_exp/feature/products/widgets/product_detail_page.dart';
import 'package:riverpod_exp/feature/settings/view/settings_page.dart';
import 'package:riverpod_exp/feature/videos/view/video_view.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/feature/home/view/home_page.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
          settings: const RouteSettings(name: Routes.home),
        );

      case Routes.jokePage:
        return MaterialPageRoute(
          builder: (context) => const JokePage(),
          settings: const RouteSettings(name: Routes.jokePage),
        );

      case Routes.settingsPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
          settings: const RouteSettings(name: Routes.settingsPage),
        );

      case Routes.favouritePage:
        return MaterialPageRoute(
          builder: (context) => const FavouritePage(),
          settings: const RouteSettings(name: Routes.favouritePage),
        );

      case Routes.productDetailPage:
        return MaterialPageRoute(
          builder: (context) => ProductDetailPage(
              args: settings.arguments as ProductDetailPageArgs),
          settings: RouteSettings(
              name: Routes.productDetailPage, arguments: settings.arguments),
        );

      case Routes.productPage:
        return MaterialPageRoute(
          builder: (context) => const ProductPage(),
        );

      case Routes.videoPage:
        return MaterialPageRoute(
          builder: (context) => const VideoViewPage(),
        );

      case Routes.futureProviderPage:
        return MaterialPageRoute(
            builder: (context) => const FutureProviderView());

      case Routes.hooksExp:
        return MaterialPageRoute(
            builder: (context) => const HooksExpPage());


      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
