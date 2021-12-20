import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/MyProfile.dart';
import 'package:whatsapp_clone/Pages/QrCode/QR.dart';

class mainSettings extends StatefulWidget {
  @override
  _mainSettingsState createState() => _mainSettingsState();
}

class _mainSettingsState extends State<mainSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Settings"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainMyProfile()));
                },
                child: ListTile(
                    title: Text(characters[0].name),
                    subtitle: Text(characters[0].description),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/logo.png"),radius: 30,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.qr_code),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => mainQR()));
                      },
                    )),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Hesap"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Sohbetler"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Bildirimler"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Depolama ve veriler"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Yardım"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text("Arkadaş davet edin"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 5),
                child: Center(
                  child: Text("from"),
                )),
            Center(
              child: Text(
                "FACEBOOK",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
