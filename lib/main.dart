import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/Pages/loginpage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Material App',
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    // routes: {
    //   "/login": (context) => const LoginPage(),
    //   "/home": (context) => const HomePage()
    // },
  ));
}
