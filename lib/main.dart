import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Material App',
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
