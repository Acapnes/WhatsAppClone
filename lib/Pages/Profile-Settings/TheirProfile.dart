import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';

class mainTheirProfile extends StatefulWidget {
  privateModel character;

  mainTheirProfile(this.character);

  @override
  _mainTheirProfileState createState() => _mainTheirProfileState();
}

class _mainTheirProfileState extends State<mainTheirProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name + " " + "Surname"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height+250,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(bottom: 10, left: 15,
                      child: Text(widget.character.name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){},
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text("Medya, bağlantılar ve belgeler"),
                            trailing: Text("35 >"),
                          ),
                        ),
                        Container(
                          height: 80,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Container(
                                width: 78,
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(widget.character.ourImagesPath)
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Bildirimleri sessize al"),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Özel bildirimler"),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Medya görünürlüğü"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: (1/2).toInt() as int,
                child: Container(
                  color: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Süreli mesajlar"),
                          subtitle: Text("Kapalı"),
                          trailing: Icon(Icons.timelapse),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Şifreleme"),
                          subtitle: Text("Mesajlar ve aramalar uçtan uca şifrelidir.\n"
                              "Doğrulamak için dokunun"),
                          trailing: Icon(Icons.lock),),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: (1/2).toInt() as int,
                child: Container(
                  color: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(widget.character.currentMsg),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(widget.character.currentMsg),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: (1/4).toInt() as int,
                child: Container(
                  color: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 25,
                          child: ListTile(
                            onTap: (){

                            },
                            contentPadding: EdgeInsets.zero,
                            title: Text("Ortak guruplar",style: TextStyle(fontSize: 12),),
                            trailing: Text("1"),
                          ),
                        ),
                        SizedBox(height: 15,),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("Bildirimleri sessize al"),
                          subtitle: Text("Ben,Sen,Siz"),
                          leading: CircleAvatar(backgroundImage: AssetImage("assets/logo.png"),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: (1/4).toInt() as int,
                child: Material(
                  child: InkWell(
                    onTap: (){
                      _showAlertDialogBlock("Kişiyi engellemek istediğinize emin misiniz?");
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.block,color: Colors.red,),
                          title: Text("Engelle",style: TextStyle(color: Colors.red)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: (1/4).toInt() as int,
                child: Material(
                  child: InkWell(
                    onTap: (){
                      _showAlertDialogBlock("Kişiyi şikayet etmek istediğinize emin misiniz?");
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.desktop_access_disabled_sharp,color: Colors.red),
                          title: Text("Kişiyi şikayet et",style: TextStyle(color: Colors.red),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
  _showAlertDialogBlock(String title){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Container(
              child: Text(title),
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Hayır"),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Evet"),
              ),
            ],
          );
        }
    );
  }
}
