import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kevalzalavadiya/additem/additem.dart';
import 'package:kevalzalavadiya/additem/Cottonlistview.dart';
import 'package:kevalzalavadiya/additem/wheatitemview.dart';
import 'package:kevalzalavadiya/additem/Ricelistview.dart';
import 'package:kevalzalavadiya/additem/Sorghumlistview.dart';
import 'package:kevalzalavadiya/additem/snakslistview.dart';
import 'package:kevalzalavadiya/additem/peanutlistview.dart';
import 'package:kevalzalavadiya/create_an_account/loginpage.dart';
import 'package:kevalzalavadiya/create_an_account/signuppage.dart';
import 'package:kevalzalavadiya/homepage/appbar_bottomnav.dart';
import 'package:kevalzalavadiya/homepage/homepagecustomer.dart';
import 'package:kevalzalavadiya/homepage/homepageseller.dart';
import 'package:get/get.dart';
import 'package:kevalzalavadiya/splashscreen/splashscreen2.dart';
import 'resources/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffffafcc), width: 2)))),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => const Loginpage(),
        "splashscreen2": (context) => const Splashscreen2(),
        'loginpage': (context) => const Loginpage(),
        'signuppage': (context) => const Signup(),
        'homelayout': (context) => const Homepagelayout(),
        'additem': (context) => const Additempage(),
        "Cottonlistview": (context) => const Cottonlistview(),
        "Sorghumlistview": (context) => const Sorghumlistview(),
        "peanutlistview": (context) => const peanutlistview(),
        "wheatlistview": (context) => const wheatlistview(),
        "Ricelistview": (context) => const Ricelistview(),
        "Snacklistview": (context) => const Snacklistview(),
        "homepageseller": (context) => const Homepageseller(),
        "homepagecustomer": (context) => const HomepageCustomer()
      },
    );
  }
}
