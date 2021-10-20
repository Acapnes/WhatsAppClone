class model {
  String name;
  String time;
  int id;
  String currentMsg;
  String description;

  model({this.currentMsg, this.id, this.name, this.time,this.description});
}



List<model> characters = [
  model(name : "Alper",time:"12.22",id:1,currentMsg: "Selam",description:"a"), /// Account
  model(name : "Ali",time:"12.22",id:2,currentMsg: "Selam",description:"a"),
  model(name : "Hamza",time:"12.22",id:3,currentMsg: "Selam",description:"a"),
  model(name : "Mert",time:"12.22",id:4,currentMsg: "Selam",description:"a"),
  model(name : "Ferit",time:"12.22",id:5,currentMsg: "Selam",description:"a"),
];


