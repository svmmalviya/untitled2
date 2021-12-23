import 'package:flutter/material.dart';

class BGImage extends StatelessWidget {
  const BGImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg1.jpg",
      fit: BoxFit.cover,
    );
  }
}
