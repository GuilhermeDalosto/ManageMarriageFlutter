import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casamento',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Lista de Presentes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Gift {
  final String name;
  final String photo;
  final int price;
  final int collected;

  Gift({this.name = "",this.photo = "",this.price = 0,this.collected = 0});
}

class _MyHomePageState extends State<MyHomePage> {

  List<Gift> gifts = [
    Gift(name: "Geladeira",photo: "geladeira",price: 3000)
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: const Text('Presentes'))
            ],
            rows: List<DataRow>.generate(
                gifts.length,
                (int index) => DataRow(
                      color: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        return Colors.white;
                      }),
                      cells: <DataCell>[DataCell(Text('${gifts[index].name}'))],
                    ))),
      ),

    );
  }
}
