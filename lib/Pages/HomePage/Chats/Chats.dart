import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats/PrivateChats.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/TheirProfile.dart';

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
          itemBuilder: (context, i){
            return Material(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              mainPChats(characters[i])));
                },
                child: Container(
                  child: ListTile(
                      title: Text(characters[i].name),
                      subtitle: Text(characters[i].currentMsg),
                      leading: IconButton(
                        icon: CircleAvatar(
                          backgroundImage: AssetImage("assets/logo.png"),),
                        onPressed: (){
                          _showAlertDialogAvatar(i);
                      },),
                      trailing: Text(characters[i].time),
                    ),
                ),
              ),
            );
        }),
        ),
      );
  }
  _showAlertDialogAvatar(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0.0),
            title: Container(
              width: 200,
              height: 200,
              child: Stack(
                children: [
                  Image(
                      image: AssetImage(characters[index].ourImagesPath),
                      fit: BoxFit.fill
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      color: Colors.grey.withOpacity(0.3),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 12),
                        child: Text(characters[index].name,style: TextStyle(
                            color: Colors.black.withOpacity(0.6)
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.call)
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.message)
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.video_call)
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                mainTheirProfile(characters[index])));
                  },
                  icon: Icon(Icons.info_rounded)
              ),
            ],
          );
        });
  }
}
