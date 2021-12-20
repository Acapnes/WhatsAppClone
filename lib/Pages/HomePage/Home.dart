import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Controllers/PopUpMenus/CallsPopup.dart';
import 'package:whatsapp_clone/Controllers/PopUpMenus/ChatsPopup.dart';
import 'package:whatsapp_clone/Controllers/PopUpMenus/StatusPopup.dart';
import 'package:whatsapp_clone/Pages/HomePage/Calls.dart';
import 'package:whatsapp_clone/Pages/HomePage/Camera.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats/Chats.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats/selectionFAB.dart';
import 'package:whatsapp_clone/Pages/HomePage/Status.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/Settings.dart';
import 'package:whatsapp_clone/globals.dart';

class mainHome extends StatefulWidget {
  const mainHome({Key key}) : super(key: key);

  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome>
    with SingleTickerProviderStateMixin {
  double _appBarTop = 0.0;
  TabController _controller;
  final int _cameraTapIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
    _controller.addListener(_handleTabChange);
  }

  _handleTabChange() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTabChange);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _bottomButtons(),
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  _popUpMenus(),
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

  Widget _popUpMenus() {
    switch (_controller.index) {
      case 0:
        return Container();
        break;
      case 1:
        return mainChatsPopup();
        break;
      case 2:
        return mainStatusPopup();
        break;
      case 3:
        return mainCallsPopup();
        break;
    }
  }

  Widget _bottomButtons() {
    switch (_controller.index) {
      case 0:
        return null;
        break;
      case 1:
        return FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        mainSelectionFAB()));
          },
          shape: StadiumBorder(),
          backgroundColor: Colors.green,
          child: Icon(
            Icons.message,
            size: 20.0,
          ),
        );
        break;
      case 2:
        return Container(
          height: 110,
          child: Column(
            children: [
              Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    ),
                  ], shape: BoxShape.circle, color: Colors.blueGrey),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.edit,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )),
              Container(
                  width: 55,
                  height: 55,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.photo_camera,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      getImage();
                    },
                  )),
            ],
          ),
        );
        break;
      case 3:
        return FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: null,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.add_call,
              size: 20.0,
            ));
        break;
    }
  }
}
