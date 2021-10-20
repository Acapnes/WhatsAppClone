import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/charactersModel.dart';

class mainChats extends StatefulWidget {

  @override
  _mainChatsState createState() => _mainChatsState();
}

class _mainChatsState extends State<mainChats> {

  List<model> characters = [
    model(name : "Alper",time:"12.22",id:1,currentMsg: "Selam"),
    model(name : "Ali",time:"12.22",id:2,currentMsg: "Selam"),
    model(name : "Hamza",time:"12.22",id:3,currentMsg: "Selam"),
    model(name : "Mert",time:"12.22",id:4,currentMsg: "Selam"),
    model(name : "Ferit",time:"12.22",id:5,currentMsg: "Selam"),
  ];

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
            return Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: (){},
                onLongPress: (){},
                child: ListTile(
                  title: Text(characters[i].name),
                  subtitle: Text(characters[i].currentMsg),
                  leading: IconButton(icon: CircleAvatar(backgroundImage: AssetImage("assets/logo.png"),),onPressed: (){},),
                  trailing: Text(characters[i].time),
                ),
              ),
            );
        }),
        ),
      );
  }
}
