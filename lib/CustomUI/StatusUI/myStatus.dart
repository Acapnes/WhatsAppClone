import 'package:flutter/material.dart';


class mainMyStatus extends StatefulWidget {
  String path;
  mainMyStatus(this.path);
  @override
  _mainMyStatusState createState() => _mainMyStatusState();
}

class _mainMyStatusState extends State<mainMyStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: widget.path.isNotEmpty ? AssetImage(widget.path)
              : AssetImage("assets/logo.png")),
        ),
      ),
    );
  }
}
