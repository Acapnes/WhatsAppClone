import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/QrCode/myQR.dart';

class mainQR extends StatefulWidget {
  @override
  _mainQRState createState() => _mainQRState();
}

class _mainQRState extends State<mainQR> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR kodu"),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
                text: "QR KODUM",
            ),
            Tab(
              text: "KODU TARA",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [mainmyQR(), Container()]),
    );
  }
}
