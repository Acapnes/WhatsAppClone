import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/myChatList.dart';
import 'package:whatsapp_clone/CustomUI/ChatList/theirChatList.dart';
import 'package:whatsapp_clone/Models/CharactersModel.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';
import 'package:whatsapp_clone/Pages/Profile-Settings/TheirProfile.dart';
import 'package:whatsapp_clone/globals.dart';
import 'package:just_audio/just_audio.dart' as ap;
import 'package:permission_handler/permission_handler.dart';
import 'package:record/record.dart';

class mainPChats extends StatefulWidget {
  privateModel character;
  mainPChats(this.character);

  @override
  _mainPChatsState createState() => _mainPChatsState();
}

class _mainPChatsState extends State<mainPChats> {
  /// Other
  bool isShowing = false;
  bool isPhoto = false;

  /// Controllers
  TextEditingController messageController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  /// Audio
  final _audioPlayer = ap.AudioPlayer();
  final _audioRecorder = Record();
  bool _isRecording = false;
  String RecordString = "Ses Kaydını Başlat", mesaj;
  bool isPlaying = false, mainInsert = true;
  List recordArray = [];

  /// Record Button
  double _recordButtonIconSize = 20;
  double _recordButtonIconReSizeValue = 20;
  double _recordButtonWidth = 50;
  double _recordButtonHeight = 50;
  double _recordButtonResizeValue = 40;
  double _recordButtonPositionRight = 10;
  double _recordButtonPositionBottom = 10;
  double _recordButtonRepositionValue = 20;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 20,
        title: Material(
          color: Colors.green,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          mainTheirProfile(widget.character)));
            },
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                widget.character.name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text("Last seen today at " + widget.character.time,
                  style: TextStyle(color: Colors.white)),
              leading: CircleAvatar(
                backgroundImage: AssetImage(widget.character.ourImagesPath),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton(
            onSelected: (index) {
              if (index == 5) {
                print(index);
                Navigator.pop(context);
                PopupMenuButton(
                    onSelected: (result) {},
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("Status Security Settings"),
                            value: 1,
                            onTap: () {},
                          ),
                          PopupMenuItem(
                            child: Text("Settings"),
                            value: 2,
                            onTap: () {},
                          ),
                        ]);
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Kişiyi Görüntüle"),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text("Medya, bağlantılar ve belegeler"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Ara"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Bildirimleri sessize al"),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text("Duvar Kağıdı"),
                  value: 4,
                ),
                PopupMenuItem(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Diğer"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  value: 5,
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            ListView.builder(
              controller: _scrollController,
              itemCount: chats.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return chats[index].me
                    ? mainMyChatList(
                        message: chats[index].message,
                        time: chats[index].me.toString(),
                        onPlay: ((value) => play(index)),
                        record: chats[index].record,
                      )
                    : mainTheirChatList(
                        message: chats[index].message,
                        time: chats[index].me.toString(),
                      );
              },
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextFormField(
                      onChanged: (txt) {
                        messageController.value = TextEditingValue(
                            text: txt,
                            selection: TextSelection.fromPosition(
                              TextPosition(offset: txt.length),
                            ));
                        setState(() {});
                      },
                      controller: messageController,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type a message",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: IconButton(
                          icon: Icon(
                            isShowing
                                ? Icons.keyboard
                                : Icons.emoji_emotions_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isShowing = !isShowing;
                            });
                          },
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                          ),
                          onPressed: () {
                            getImage();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: _recordButtonPositionRight,
              bottom: _recordButtonPositionBottom,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                    width: _recordButtonWidth,
                    height: _recordButtonHeight,
                    child: messageController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              if (messageController.text != "") {
                                setState(() {
                                  chats.add(chatModel(
                                      me: true,
                                      record: false,
                                      message: messageController.text));
                                  messageController.text = "";
                                });
                                toBot();
                              } else if (messageController.text == "") {
                                /// Bottom Scaffold info bar
                              }
                            },
                          )
                        : Material(
                            color: Colors.greenAccent,
                            shape: CircleBorder(),
                            child: GestureDetector(
                              onLongPress: () {
                                setState(() => _recordButtonIncreaseRevalue());
                                startRecord();
                              },
                              onLongPressUp: () {
                                setState(() => _recordButtonDecreaseRevalue());
                                stopRecord();
                              },
                              child: IconButton(
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                  size: _recordButtonIconSize,
                                ),
                              ),
                            ),
                          )),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Record Functions
  Future<void> startRecord() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      print("Mikrofon izni verildi");
    }
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();
        bool isRecording = await _audioRecorder.isRecording();
        setState(() {
          _isRecording = isRecording;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> stopRecord() async {
    final path = await _audioRecorder.stop();
    chats.add(chatModel(me: true, record: true, message: path));
    setState(() => _isRecording = false);
  }

  /// Play Functions
  Future<void> play(int Index) {
    print("a");
    _audioPlayer.setUrl(chats[Index].message);
    return _audioPlayer.play();
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
    return _audioPlayer.seek(const Duration(milliseconds: 0));
  }

  /// Animation Functions
  toBot() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent + 56,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
  }

  /// Record Button Functions
  void _recordButtonIncreaseRevalue() {
    _recordButtonWidth += _recordButtonResizeValue;
    _recordButtonHeight += _recordButtonResizeValue;
    _recordButtonPositionBottom -= _recordButtonRepositionValue;
    _recordButtonPositionRight -= _recordButtonRepositionValue;
    _recordButtonIconSize += _recordButtonIconReSizeValue;
  }

  void _recordButtonDecreaseRevalue() {
    _recordButtonWidth -= _recordButtonResizeValue;
    _recordButtonHeight -= _recordButtonResizeValue;
    _recordButtonPositionBottom += _recordButtonRepositionValue;
    _recordButtonPositionRight += _recordButtonRepositionValue;
    _recordButtonIconSize -= _recordButtonIconReSizeValue;
  }
}
