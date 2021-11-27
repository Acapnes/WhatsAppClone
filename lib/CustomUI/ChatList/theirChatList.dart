import 'package:flutter/material.dart';

class mainTheirChatList extends StatelessWidget {
  const mainTheirChatList({Key key, this.message, this.time}) : super(key: key);
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45,
          ),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50,top: 8,bottom: 10,left: 8),
                  child: Text(message,style: TextStyle(),),
                ),
                Positioned(
                  right: 5,
                  bottom: 2,
                  child: Text(time,style: TextStyle(color: Colors.black38),),
                )
              ],
            ),
          ),
        ));
  }
}
