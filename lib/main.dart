import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/Pages/homepage.dart';
import 'package:untitled2/Pages/loginpage.dart';
import 'package:untitled2/utils/Constants.dart';

import 'Pages/homepagewithfb.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Material App',
    home: Constants.pref.getBool("loggedin") == true
        ? const HomePageFB()
        : const LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "login": (context) => const LoginPage(),
      "home": (context) => const HomePage()
    },
  ));
}
