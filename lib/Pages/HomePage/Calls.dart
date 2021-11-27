import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';

class mainCalls extends StatefulWidget {
  @override
  _mainCallsState createState() => _mainCallsState();
}

class _mainCallsState extends State<mainCalls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/logo.png"),),
            title: Text(characters[index].name),
            subtitle: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.phone_callback,size: 12,color: Colors.green,),
                ),
                Text(characters[index].time),
              ],
            ),
            trailing: Icon(Icons.video_call),
          );
        },
      ),
    );
  }
}
