class Guest {
  String name;
  String tipo;

  Guest({required this.name, String this.tipo = ""});

  static List<Guest> generateMock() {
    List<Guest> guests = [
      Guest(name: "Marcos Jacy", tipo: "Padrinho"),
      Guest(name: "Manuella Farias", tipo: "Madrinha"),
      Guest(name: "Rafaela Luíza"),
      Guest(name: "Aline Farias"),
      Guest(name: "Guilherme Dalosto", tipo: "Padrinho")
    ];

    return guests;
  }
}
