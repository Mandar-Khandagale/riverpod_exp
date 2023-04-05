// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "title": "Title",
  "app_local_demo": "Application localization example",
  "demo_details": "This is a sample project to change the language with a drop down menu of languages",
  "loadData": "Load Data",
  "removeData": "Remove Data",
  "changeLanguage": "Change Language",
  "english": "English",
  "hindi": "Hindi",
  "addData": "Add Data",
  "userDataPage": "User Data Page",
  "riverPodExp": "RiverPod Example",
  "joke": "Joke",
  "favouritePage": "Favourites",
  "productPage": "Products",
  "settingsPage": "Settings",
  "homePage": "Home",
  "cardDetails": "Card Details",
  "myAccount": "My Account",
  "done": "Done",
  "video": "Videos",
  "futureProviderView": "Future Provider View"
};
static const Map<String,dynamic> hi = {
  "title": "शीर्षक",
  "app_local_demo": "app_local_demo",
  "demo_details": "डेमो_विवरण",
  "loadData": "लोड डेटा",
  "removeData": "डेटा हटाएं",
  "changeLanguage": "भाषा बदलें",
  "english": "अंग्रेज़ी",
  "hindi": "हिंदी",
  "addData": "डेटा जोड़ें",
  "userDataPage": "उपयोगकर्ता डेटा पृष्ठ",
  "riverPodExp": "रिवरपॉड उदाहरण",
  "joke": "चुटकुला",
  "favouritePage": "पसंदीदा",
  "productPage": "उत्पादों",
  "settingsPage": "समायोजन",
  "homePage": "घर",
  "cardDetails": "कार्ड के विवरण",
  "myAccount": "मेरा खाता",
  "done": "पूर्ण",
  "video": "वीडियो",
  "futureProviderView": "भविष्य प्रदाता देखें"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "hi": hi};
}
