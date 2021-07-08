import 'package:flutter/material.dart';
import 'package:marriage/Model/Gift.dart';

class GiftPage extends StatefulWidget {
  GiftPage({Key? key, this.title = "Casamento"}) : super(key: key);

  final String title;

  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  List<Gift> gifts = Gift.generateMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Center(
            child: ListView.builder(
                itemCount: gifts.length,
                itemBuilder: (BuildContext context, int index) {
                  var gift = gifts[index];
                  return ListTile(
                    leading: FlutterLogo(),
                    title: Text(gift.name),
                    subtitle: Text(gift.link),
                    trailing: Wrap(
                        spacing: 10,
                        direction: Axis.vertical,
                        children: <Widget>[
                          new Text(
                            'Valor total: ${gift.price}',
                            style: TextStyle(color: Colors.green),
                          ),
                          new Text(
                            'Valor arrecadado: ${gift.collected}',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                  );
                })));
  }
}
