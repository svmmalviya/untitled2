import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: 'Material App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Title'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 400,
              width: 200,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
