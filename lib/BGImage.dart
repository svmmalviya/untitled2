import 'package:flutter/material.dart';

class BGImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg1.jpg",
      fit: BoxFit.cover,
    );
  }
}
