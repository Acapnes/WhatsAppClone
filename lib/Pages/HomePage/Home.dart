import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/charactersModel.dart';
import 'package:whatsapp_clone/Pages/HomePage/Calls.dart';
import 'package:whatsapp_clone/Pages/HomePage/Camera.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats.dart';
import 'package:whatsapp_clone/Pages/HomePage/Status.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/Settings.dart';

class mainHome extends StatefulWidget {
  const mainHome({Key key}) : super(key: key);

  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(_controller.index);
          },
          backgroundColor: Colors.green,
          child: _controller.index == 1
              ? Icon(Icons.mail)
              : Icon(Icons.settings_outlined)),
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  PopupMenuButton(
                      onSelected: (result) {
                        setState(() {
                          if (result == 5) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => mainSettings()));
                          }
                        });
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
                          ])
                ],
              )),
        ],
        backgroundColor: Colors.green,
        title: Text("WhatsApp"),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: [mainCamera(), mainChats(), mainStatus(), mainCalls()]),
    );
  }
}
