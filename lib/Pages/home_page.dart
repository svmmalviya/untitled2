import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/drawer.dart';
import '../ChangeNameCard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _mainController = TextEditingController();
  var myText = "My text";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('App Title'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
              child: ChangeNameCard(
                  myText: myText, mainController: _mainController)),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = _mainController.text;
          });
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.refresh),
        tooltip: "Shiva Btn",
      ),
    );
  }
}
