class chatModel{
  String message;
  String time;
  bool record;
  bool me;
  chatModel({this.message,this.me,this.record,this.time});

}
List<chatModel> chats = [
  chatModel(me: true,message:"Hi!",record: false),
  chatModel(me: false,message:"Hello :)",record: false),
  chatModel(me: false,message:"How's it going?",record: false),
  chatModel(me: true,message:"Very very nice, yours?",record: false),
  chatModel(me: false,message:"Its very good for me too.",record: false),
  chatModel(me: false,message:"Where are u in the project.",record: false),
  chatModel(me: true,message:"I'm doing design part.",record: false),
  chatModel(me: true,message:"After this i'll do models.",record: false),
];