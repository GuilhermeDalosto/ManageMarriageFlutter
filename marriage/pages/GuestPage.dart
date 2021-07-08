import "package:flutter/material.dart";
import "package:marriage/Model/Guest.dart";

class GuestPage extends StatefulWidget {
  GuestPage({Key? key}) : super(key: key);

  @override
  _GuestPageState createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  var guests = Guest.generateMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: guests.length,
                itemBuilder: (BuildContext context, int index) {
                  var guest = guests[index];
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text(guest.name),
                    subtitle: Text(guest.tipo),
                  );
                })));
  }
}
