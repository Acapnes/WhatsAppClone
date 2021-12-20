import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/StatusUI/myStatus.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Pages/HomePage/Camera.dart';
import 'package:whatsapp_clone/globals.dart';

class mainStatus extends StatefulWidget {

  @override
  _mainStatusState createState() => _mainStatusState();
}

class _mainStatusState extends State<mainStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Material(
                    child: InkWell(
                      onTap: (){
                        getImage();
                      },
                      child: ListTile(
                        leading: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => mainMyStatus("assets/background.png")));
                          },
                            child: CircleAvatar(backgroundImage: AssetImage("assets/logo.png"),)),
                        title: Text("Status"),
                        subtitle: Text("Tap to add status update"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Latest updates"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/logo.png"),),
                  title: Text(characters[index].name),
                  subtitle: Text(characters[index].currentMsg),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
