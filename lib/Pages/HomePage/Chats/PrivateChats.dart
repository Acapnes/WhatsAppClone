import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/myChatList.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/theirChatList.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/TheirProfile.dart';

class mainPChats extends StatefulWidget {
  privateModel character;
  mainPChats(this.character);
  @override
  _mainPChatsState createState() => _mainPChatsState();
}

class _mainPChatsState extends State<mainPChats> {
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 25,
          title: Material(
            color: Colors.blue,
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            mainTheirProfile(widget.character)));
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(widget.character.name),
                subtitle: Text("Last seen today at " + widget.character.time),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/logo.png"),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {},
            ),
            PopupMenuButton(
              onSelected: (index) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("araba"),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Text("araba"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("araba"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("araba"),
                    value: 3,
                  ),
                ];
              },
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return chats[index].me
                        ? mainMyChatList(
                            message: chats[index].message,
                            time: chats[index].me.toString(),
                          )
                        : mainTheirChatList(
                            message: chats[index].message,
                            time: chats[index].me.toString(),
                          );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - 60,
                            child: Card(
                              margin: EdgeInsets.only(
                                  left: 5, right: 5, bottom: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type a message",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: IconButton(
                                    icon: Icon(
                                      isShowing
                                          ? Icons.keyboard
                                          : Icons.emoji_emotions_outlined,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isShowing = !isShowing;
                                      });
                                    },
                                  ),
                                  suffixIcon: Icon(
                                    isShowing
                                        ? Icons.keyboard
                                        : Icons.camera_alt,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            margin: EdgeInsets.only(bottom: 10),
                            child: IconButton(
                              icon: Icon(Icons.send,color: Colors.white,),
                              onPressed: (){},
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
