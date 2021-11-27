import 'package:flutter/material.dart';

class mainMyChatList extends StatelessWidget {
  const mainMyChatList({Key key, this.message, this.time}) : super(key: key);
  final String message;
  final String time;

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
            child: Stack(
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
            ),
          ),
        ),
    );
  }
}
