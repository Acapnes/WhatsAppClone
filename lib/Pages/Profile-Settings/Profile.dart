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
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {},
                        child: Icon(Icons.photo,size: 20,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Hesap"),
                  subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                  leading: Icon(Icons.details),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Hesap"),
                  subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                  leading: Icon(Icons.details),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Hesap"),
                  subtitle: Text("Gizlilik, güvenlik, numara değiştir"),
                  leading: Icon(Icons.call),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
