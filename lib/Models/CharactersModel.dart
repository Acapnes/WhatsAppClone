class privateModel {
  String name;
  String time;
  int id;
  String currentMsg;
  String description;
  String ourImagesPath;

  privateModel({this.currentMsg, this.id, this.name, this.time,this.description,this.ourImagesPath});
}



List<privateModel> characters = [
  privateModel(name : "Alper",time:"12.22",id:1,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-1.png"), /// Account

  privateModel(name : "Ali",time:"12.22",id:2,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-2.png"),
  privateModel(name : "Hamza",time:"12.22",id:3,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-2.png"),
  privateModel(name : "Mert",time:"12.22",id:4,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-2.png"),
  privateModel(name : "Ahmet",time:"12.22",id:5,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-3.png"),
  privateModel(name : "Aslan",time:"12.22",id:6,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-3.png"),
  privateModel(name : "Fatih",time:"12.22",id:7,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-3.png"),
  privateModel(name : "Fuat",time:"12.22",id:8,currentMsg: "Selam ben Fuat",description:"a",ourImagesPath: "assets/profile-1.png"),
  privateModel(name : "Ayşe",time:"12.22",id:9,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-2.png"),
  privateModel(name : "Emine",time:"12.22",id:10,currentMsg: "Selam",description:"a",ourImagesPath: "assets/profile-3.png"),
];


