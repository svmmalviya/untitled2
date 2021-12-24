// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:untitled2/Widgets/BGImage.dart';
import 'package:untitled2/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BGImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Form(
                              child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter username",
                                    labelText: "Username"),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password"),
                              )
                            ],
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const HomePage()));
                              Constants.pref.setBool("loggedin", true);
                              Navigator.pushNamed(context, "home");
                            },
                            child: Text("Sign In"),
                            color: Colors.orange,
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
