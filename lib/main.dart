import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePage/Camera.dart';
import 'package:whatsapp_clone/Pages/HomePage/Home.dart';
import 'package:whatsapp_clone/Pages/Landing.dart';
import 'Other/Globals.dart' as globals;
import 'package:camera/camera.dart';

///

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(Duration(milliseconds: 2000));
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (globals.phoneNumber != "0000") {
          return MaterialApp(home: mainLanding());
        } else {
          return MaterialApp(home: mainHome());
        }
      },
    );
  }
}
