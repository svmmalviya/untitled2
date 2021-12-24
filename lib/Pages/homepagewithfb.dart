import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/Widgets/drawer.dart';
import 'dart:convert';

import 'package:untitled2/utils/Constants.dart';

class HomePageFB extends StatefulWidget {
  const HomePageFB({Key? key}) : super(key: key);

  @override
  State<HomePageFB> createState() => _HomePageFBState();
}

class _HomePageFBState extends State<HomePageFB> {
  final TextEditingController _mainController = TextEditingController();

  var data;
  int i = 0;

  var url = "https://jsonplaceholder.typicode.com/photos";

  Future getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(child: Text("Please fetch some"));
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(child: Text("Error occured"));
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        focusColor: Colors.red,
                        selectedColor: Colors.red,
                        contentPadding: EdgeInsets.all(5),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data[index]["url"]),
                        ),
                        title: Text(data[index]["title"] as String),
                      ),
                    );
                  },
                  itemCount: data.length,
                );

              default:
                return Center(
                  child: Text("Shiv"),
                );
            }
          }),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _mainController.text;

          //Constants.pref.setBool("loggedin", false);
          Navigator.pushNamed(context, "login");
          //Navigator.pop(context);
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.refresh),
        tooltip: "Shiva Btn",
      ),
    );
  }
}
