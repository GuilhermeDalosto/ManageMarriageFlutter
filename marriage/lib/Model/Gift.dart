class Gift {
  final String name;
  final String photo;
  final String link;
  final int price;
  int collected;

  Gift(
      {this.name = "",
      this.photo = "",
      this.link = "",
      this.price = 0,
      this.collected = 0});

  static List<Gift> generateMock() {
    List<Gift> gifts = [
      Gift(
          name: "Geladeira",
          photo: "geladeira",
          link: "www.google.com",
          price: 3000),
      Gift(name: "Airfryer", photo: "airfryer", price: 500),
      Gift(name: "Fogão", photo: "fogao", price: 1500),
    ];

    return gifts;
  }
}
