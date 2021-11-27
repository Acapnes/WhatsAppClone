class chatModel{
  String message;

  bool me;
  chatModel({this.message,this.me});

}
List<chatModel> chats = [
  chatModel(me: true,message:"Hi!"),
  chatModel(me: false,message:"Hello :)"),
  chatModel(me: false,message:"How's it going?"),
  chatModel(me: true,message:"Very very nice, yours?"),
  chatModel(me: false,message:"Its very good for me too."),
  chatModel(me: false,message:"Where are u in the project."),
  chatModel(me: true,message:"I'm doing design part."),
  chatModel(me: true,message:"After this i'll do models."),
];