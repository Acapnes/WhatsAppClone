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
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon11.png"), /// Account

  privateModel(
      name: "Ali",
      time: "14:20",
      id: 2,
      type: "0",
      status: "0",
      currentMsg: "Hello",
      description: "My name is Ali",
      ourImagesPath: "assets/pokemons/pokemon1.png"),
  privateModel(
      name: "Hamza",
      time: "10:10",
      id: 3,
      type: "1",
      status: "0",
      currentMsg: "Son olarak bunu yazdım",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon2.png"),
  privateModel(
      name: "Mert",
      time: "Dün",
      id: 4,
      type: "2",
      status: "1",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon3.png"),
  privateModel(
      name: "Ahmet",
      time: "Dün",
      id: 5,
      type: "0",
      status: "1",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon4.png"),
  privateModel(
      name: "Aslan",
      time: "Dün",
      id: 6,
      type: "0",
      status: "2",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon5.png"),
  privateModel(
      name: "Fatih",
      time: "Dün",
      id: 7,
      type: "0",
      status: "0",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon6.png"),
  privateModel(
      name: "Fuat",
      time: "20.11.2021",
      id: 8,
      type: "1",
      status: "1",
      currentMsg: "Selam ben Fuat",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon7.png"),
  privateModel(
      name: "Ayşe",
      time: "21.11.2021",
      id: 9,
      type: "2",
      status: "2",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon8.png"),
  privateModel(
      name: "Emine",
      time: "21.11.2021",
      id: 10,
      type: "1",
      status: "1",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon9.png"),
  privateModel(
      name: "Fikret",
      time: "21.11.2021",
      id: 10,
      type: "1",
      status: "1",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon10.png"),
  privateModel(
      name: "Mustafa",
      time: "21.11.2021",
      id: 10,
      type: "1",
      status: "1",
      currentMsg: "Selam",
      description: "a",
      ourImagesPath: "assets/pokemons/pokemon11.png"),
];


