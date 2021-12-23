import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Material App',
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
