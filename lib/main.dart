import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:riverpod_exp/feature/products/view/product_page.dart';
import 'package:riverpod_exp/navigations/app_routes.dart';
import 'package:riverpod_exp/translations/codegen_loader.g.dart';


///to reassemble the entire UI to update the language
WidgetsBinding? widgetsBinding;


void main() async{

  widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        path: 'asset/locales',
        startLocale: const Locale("hi"),
        supportedLocales: const [Locale("en"), Locale("hi")],
        fallbackLocale:const Locale("en"),
        assetLoader: const CodegenLoader(),
        child: const ProviderScope(child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint("-------Build--------");
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1440, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(
          color: Colors.white,
        ),
        backgroundColor: Colors.white,
      ),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const ProductPage(),
      onGenerateRoute: AppRoutes.generateRoute,
      //home: const UsingLayoutBuilder(),
    );
  }
}


