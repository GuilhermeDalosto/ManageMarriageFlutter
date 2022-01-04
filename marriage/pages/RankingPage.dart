import "package:flutter/material.dart";
import 'package:marriage/Model/User.dart';

class RankingPage extends StatefulWidget {
  RankingPage({Key? key}) : super(key: key);

  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  late var users = User.generateMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  var guest = users[index];
                  return ListTile(  
                    contentPadding: EdgeInsets.only(top: 15, left: 10),                  
                    leading: new Container(
                        width: 60.0,
                        height: 190.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: new AssetImage('res/${guest.imageName}')))),
                    title: Text(guest.name),
                    subtitle: Text(guest.points),
                  );
                })));
  }
}
