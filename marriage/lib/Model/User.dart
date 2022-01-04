class User {
  String name;
  String points;
  String imageName;  

  User({required this.name, this.points = "", this.imageName = ""});

  static List<User> generateMock() {
    List<User> users = [
      User(name: "Marcos Jacy", points: "1321 pontos", imageName: "mj.png"),
      User(name: "Manuella Farias", points: "1063 pontos", imageName: "mf.png"),
      User(name: "Rafaela Luíza", points: "653 pontos", imageName: "rl.png"),
      User(name: "Aline Farias", points: "213 pontos", imageName: "af.png"),
      User(name: "Guilherme Dalosto", points: "211 pontos", imageName: "gd.png"),
    ];

    return users;
  }
}
