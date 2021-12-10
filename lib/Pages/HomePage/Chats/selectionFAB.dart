import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Pages/HomePage/Chats/PrivateChats.dart';

class mainSelectionFAB extends StatefulWidget {
  @override
  _mainSelectionFABState createState() => _mainSelectionFABState();
}

class _mainSelectionFABState extends State<mainSelectionFAB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text("Kişi Seç",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          subtitle: Text(
            characters.length.toString() + " Kişi",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: ((characters.length*70) +(4*62)).toDouble(),
          child: Column(
            children: [
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainPChats(characters[1])));
                  },
                  child: Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 15),
                      title: Text("Yeni grup"),
                      leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                          child: Icon(Icons.person,size: 25,)),
                    ),
                  ),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainPChats(characters[1])));
                  },
                  child: Container(

                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 15,right: 25),
                      title: Text("Yeni kişi"),
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.greenAccent,
                        ),
                          child: Icon(Icons.person_add,size: 25,)),
                      trailing: Icon(Icons.qr_code),
                    ),
                  ),
                ),
              ),
              Container(
                height : characters.length*72.toDouble(),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: characters.length,
                    itemBuilder: (context, i) {
                      return Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        mainPChats(characters[i])));
                          },
                          child: Container(
                            child: ListTile(
                              title: Text(characters[i].name),
                              subtitle: Text(characters[i].description),
                              leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    characters[i].ourImagesPath,
                                  )),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainPChats(characters[1])));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ListTile(
                      title: Text("Arkadaş davet edin"),
                        leading: Icon(Icons.share,size: 30,)
                    ),
                  ),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainPChats(characters[1])));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ListTile(
                      title: Text("Kişiler yardımı"),
                      leading: Icon(Icons.help,size: 30,)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
