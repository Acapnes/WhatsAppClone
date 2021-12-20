class privateModel {
  String name;
  String time;
  int id;
  String currentMsg;
  String description;
  String ourImagesPath;

  String type; /// 0 = text , 1 = video , 2 = photo
  String status; /// 0 = not taken not seen , 1 == taken not seen , 2 == taken and seen

  privateModel(
      {this.currentMsg, this.id, this.name, this.time,
        this.description,this.ourImagesPath,this.status,this.type});
}



List<privateModel> characters = [
  privateModel(
      name: "Alper",
      time: "12.22",
      id: 1,
      currentMsg: "Merhaba",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon11.png"), /// Account

  privateModel(
      name: "John",
      time: "14:20",
      id: 2,
      type: "0",
      status: "0",
      currentMsg: "Hello",
      description: "Hey",
      ourImagesPath: "assets/pokemons/pokemon1.png"),
  privateModel(
      name: "Ronald",
      time: "16:10",
      id: 3,
      type: "1",
      status: "0",
      currentMsg: "Hello",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon2.png"),
  privateModel(
      name: "Henry",
      time: "Dün",
      id: 4,
      type: "2",
      status: "1",
      currentMsg: "Hi",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon3.png"),
  privateModel(
      name: "Travis",
      time: "Dün",
      id: 5,
      type: "0",
      status: "1",
      currentMsg: "Hi",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon4.png"),
  privateModel(
      name: "Arnold",
      time: "Dün",
      id: 6,
      type: "0",
      status: "2",
      currentMsg: "Sorry my fault.",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon5.png"),
  privateModel(
      name: "James",
      time: "Dün",
      id: 7,
      type: "0",
      status: "0",
      currentMsg: "Did u see that?",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon6.png"),
  privateModel(
      name: "Robert",
      time: "20.11.2021",
      id: 8,
      type: "1",
      status: "1",
      currentMsg: "Hi my name is Robert",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon7.png"),
  privateModel(
      name: "David",
      time: "21.11.2021",
      id: 9,
      type: "2",
      status: "2",
      currentMsg: "...",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon8.png"),
  privateModel(
      name: "Richard",
      time: "21.11.2021",
      id: 10,
      type: "1",
      status: "1",
      currentMsg: "Sorry",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon9.png"),
  privateModel(
      name: "Joseph",
      time: "21.11.2021",
      id: 10,
      type: "2",
      status: "1",
      currentMsg: "What's going on?",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon10.png"),
  privateModel(
      name: "Charles",
      time: "21.11.2021",
      id: 10,
      type: "1",
      status: "1",
      currentMsg: "Hi!",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon11.png"),
];


