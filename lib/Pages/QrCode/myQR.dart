import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';

class mainmyQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 60),
            width: 300,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: <Widget>[
                SizedBox(height: 35),
                Center(
                  child: Text(
                    characters[0].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text("WhatsApp kişisi"),
                ),
                SizedBox(height: 10),
                Center(
                    child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/logo.png")),
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/logo.png"),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Text("QR kodunuz size özeldir. QR kodunuzu biriyle"),
                Text("paylaşırsanız WhatsApp kamerasıyla tarayıp"),
                Text("sizi kişi olarak ekleyebilir."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
