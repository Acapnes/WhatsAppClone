class model {
  int id;
  String name;

  String lastSeen;

  String currentMsg;
  String description;

  model({this.currentMsg, this.id, this.name, this.lastSeen,this.description});
}


List<model> characters = [
  model(name : "Alper",lastSeen:"12.22",id:1,currentMsg: "Selam",description:"a"), /// Account


  model(name : "Ali",lastSeen:"12.22",id:2,currentMsg: "Selam",description:"a"),
  model(name : "Hamza",lastSeen:"12.22",id:3,currentMsg: "Selam",description:"a"),
  model(name : "Mert",lastSeen:"12.22",id:4,currentMsg: "Selam",description:"a"),
  model(name : "Ferit",lastSeen:"12.22",id:5,currentMsg: "Selam",description:"a"),
];


