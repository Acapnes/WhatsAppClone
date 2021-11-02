import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/charactersModel.dart';

class mainChats extends StatefulWidget {
  @override
  _mainChatsState createState() => _mainChatsState();
}

class _mainChatsState extends State<mainChats> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, i) {
              return Material(
                  child: InkWell(
                onTap: () {
                  print("araba");
                },
                child: ListTile(
                    title: Text(characters[i].name),
                    trailing: Text(characters[i].lastSeen),
                    subtitle: Text(characters[i].currentMsg),
                    leading: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      onTap: () {
                        _showAlertDialogHotel();
                      },
                      onLongPress: () {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/logo.png"),
                      ),
                    )),
              ));
            }),
      ),
    );
  }

  _showAlertDialogHotel() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            titlePadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            title: Container(
              child: Stack(
                children: [
                  Container(
                      child: Image(image: AssetImage("assets/logo.png"))),
                  Positioned(
                      left: 10,
                      top: 10,
                      child: Text("Babam",style: TextStyle(color: Colors.black)))
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          );
        });
  }
}
