import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _mainController = TextEditingController();

  var myText = "My text";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  var url = "https://jsonplaceholder.typicode.com/photos";
  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index]["url"]),
                      ),
                      title: Text(data[index]["title"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = _mainController.text;
            //Navigator.pushNamed(context, "/login");
            Navigator.pop(context);
          });
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.refresh),
        tooltip: "Shiva Btn",
      ),
    );
  }
}
