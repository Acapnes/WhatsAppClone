import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/Settings.dart';

class mainCallsPopup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (result) {
          if (result == 2)
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => mainSettings()));
        },
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text("Calls Security Settings"),
            value: 1,
            onTap: () {},
          ),
          PopupMenuItem(
            child: Text("Settings"),
            value: 2,
            onTap: () {},
          ),
        ]);
  }
}
