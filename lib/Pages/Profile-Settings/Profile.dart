import 'package:flutter/material.dart';

class mainProfile extends StatefulWidget {
  @override
  _mainProfileState createState() => _mainProfileState();
}

class _mainProfileState extends State<mainProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/logo.png",
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      onTap: () {
                        print("add a photo");
                      },
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Icon(
                          Icons.add_a_photo,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                    title: Text("Bildirimler"),
                    subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                    leading: Icon(Icons.details),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
