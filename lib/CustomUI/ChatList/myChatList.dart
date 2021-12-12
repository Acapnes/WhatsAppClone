import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats/PrivateChats.dart';

class mainMyChatList extends StatelessWidget {
  const mainMyChatList({Key key, this.message, this.time,this.record,this.index,this.onPlay}) : super(key: key);
  final String message;
  final String time;
  final bool record;
  final int index;
  final ValueChanged<int> onPlay;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45,
            minWidth: 100,
          ),
          child: Card(
            color: Color(0xff26d467),
            elevation: 1,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: !record ? Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20, left: 8),
                  child: Text(message)),
                Positioned(
                  right: 5,
                  bottom: 2,
                  child: Row(
                    children: [
                      Text(
                        time,
                        style: TextStyle(color: Colors.black38),
                      ),
                      SizedBox(width:5),
                      Icon(Icons.done_all,size: 15,),
                    ],
                  ),
                ),
              ],
            ) : Container(
              width: MediaQuery.of(context).size.width - 45,
              child: Stack(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/logo.png"),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: -5,
                    child: IconButton(
                      icon: Icon(Icons.play_arrow,size: 50,color: Colors.grey,),
                      onPressed: (){
                        onPlay(index);
                      },
                    ),
                  ),
                  Positioned(
                    top: 4.5,
                    left: 80,
                    child: Slider(
                      value: 10,
                      min: 0,
                      max: 100, onChanged: (double value) {  },
                    ),
                  ),
                  Positioned(
                    left: 105,
                    bottom: 1,
                    child: Text("0:01",style: TextStyle(color: Colors.black38,fontSize: 12),),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 2,
                    child: Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(color: Colors.black38),
                        ),
                        SizedBox(width:5),
                        Icon(Icons.done_all,size: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
    );
  }
}
