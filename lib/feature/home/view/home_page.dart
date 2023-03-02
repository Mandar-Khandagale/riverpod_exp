import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:riverpod_exp/feature/home/widgets/account_widget.dart';
import 'package:riverpod_exp/feature/home/widgets/cards_widget.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'dart:ui' as ui;
import 'package:image_gallery_saver/image_gallery_saver.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  final GlobalKey _key = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _key,
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.homePage.tr()),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.settingsPage);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _takeScreenshot();
          },
          child: const Icon(Icons.emoji_emotions_sharp),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              ///upper account widget
              const AccountWidget(),

              ///card title widget
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    LocaleKeys.cardDetails.tr(),
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              ///multiple cards widget
              const CardsWidget(),
            ],
          ),
        ),
      ),
    );
  }

   void _takeScreenshot() async {
     RenderRepaintBoundary boundary =
     _key.currentContext!.findRenderObject() as RenderRepaintBoundary;

     ui.Image image = await boundary.toImage();
     ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
     if (byteData != null) {
       Uint8List pngBytes = byteData.buffer.asUint8List();

       //Saving the screenshot to the gallery
       final result = await ImageGallerySaver.saveImage(
           Uint8List.fromList(pngBytes),
           quality: 100,
           name: 'screenshot-${DateTime.now()}.png');

       if (kDebugMode) {
         print("result::$result");
       }

     }
   }

}


