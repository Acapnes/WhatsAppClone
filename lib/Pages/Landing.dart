
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePage/Home.dart';
import 'package:whatsapp_clone/Pages/Login.dart';

class mainLanding extends StatelessWidget {
  const mainLanding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Text("Welcome to WhatsApp",style: TextStyle(fontSize: 30,color: Colors.lightGreen,fontWeight: FontWeight.bold),),
            SizedBox(height: 80,),
            Container(
              height: 400,
              color: Colors.red,
            ),
            SizedBox(height: 30,),
            Text('Tap "Agree and Continue" to accept the WhatsApp',style: TextStyle(fontSize: 16),),
            Text("Terms of Service and Privacy Policy",style: TextStyle(fontSize: 16,color: Colors.lightBlue),),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            mainHome()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen
              ),
              child: Text("AGREE AND CONTINUE",style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
