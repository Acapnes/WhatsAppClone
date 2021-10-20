import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePage/Home.dart';
import 'package:whatsapp_clone/Pages/Landing.dart';
import 'package:whatsapp_clone/Pages/Login.dart';
import 'Other/Globals.dart' as globals;

///

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(Duration(milliseconds: 2000));
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (globals.phoneNumber != "0000") {
          return MaterialApp(home: mainHome());
        } else {
          return MaterialApp(home: mainLanding());
        }
      },
    );
  }
}
