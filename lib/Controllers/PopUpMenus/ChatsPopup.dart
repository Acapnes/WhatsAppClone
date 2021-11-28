import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/Settings.dart';

class mainChatsPopup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (result) {
          if (result == 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => mainSettings()));
          }
          else if (result == 1)
            print("chats");
        },
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text("New Group"),
            value: 1,
            onTap: () {},
          ),
          PopupMenuItem(
            child: Text("New Select Message"),
            value: 2,
            onTap: () {},
          ),
          PopupMenuItem(
            child: Text("Connection"),
            value: 3,
            onTap: () {},
          ),
          PopupMenuItem(
            child: Text("Star Messages"),
            value: 4,
            onTap: () {},
          ),
          PopupMenuItem(
            child: Text("Settings"),
            value: 5,
          )
        ]);
  }
}
