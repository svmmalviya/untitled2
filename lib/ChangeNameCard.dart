import 'package:flutter/material.dart';

import 'bgImage.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController mainController,
  })  : _mainController = mainController,
        super(key: key);

  final String myText;
  final TextEditingController _mainController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BGImage(),
        SizedBox(
          height: 50,
        ),
        Text(
          myText,
          style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _mainController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Siv",
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
