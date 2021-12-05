import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Controllers/PopUpMenus/StatusPopup.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/myChatList.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/theirChatList.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/TheirProfile.dart';
import 'package:whatsapp_clone/globals.dart';

class mainPChats extends StatefulWidget {
  privateModel character;
  mainPChats(this.character);

  @override
  _mainPChatsState createState() => _mainPChatsState();
}

class _mainPChatsState extends State<mainPChats> {
  bool isShowing = false;
  bool isPhoto = false;
  TextEditingController messageController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  toBot() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent + 56,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 20,
        title: Material(
          color: Colors.green,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          mainTheirProfile(widget.character)));
            },
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(widget.character.name,style: TextStyle(color: Colors.white),),
              subtitle: Text("Last seen today at " + widget.character.time,style: TextStyle(color: Colors.white)),
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
            onSelected: (index) {
              if(index == 5){
                print(index);
                Navigator.pop(context);
                PopupMenuButton(
                    onSelected: (result) {},
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Status Security Settings"),
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
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Kişiyi Görüntüle"),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text("Medya, bağlantılar ve belegeler"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Ara"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Bildirimleri sessize al"),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text("Duvar Kağıdı"),
                  value: 4,
                ),
                PopupMenuItem(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Diğer"),
                    trailing: Icon(Icons.arrow_forward_ios,size: 15,),
                  ),
                  value: 5,
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
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: chats.length,
                physics: BouncingScrollPhysics(),
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
                            margin:
                                EdgeInsets.only(left: 5, right: 5, bottom: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: messageController,
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
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.camera_alt,
                                  ),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          margin: EdgeInsets.only(bottom: 10),
                          child: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              if(messageController.text!="") {
                                setState(() {
                                  chats.add(chatModel(
                                      me: true,
                                      message: messageController.text));
                                  messageController.text = "";
                                });
                                toBot();
                              }
                              else if(messageController.text == ""){
                                /// Bottom Scaffold info bar
                              }
                            },
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
