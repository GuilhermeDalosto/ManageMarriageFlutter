import 'package:flutter/material.dart';

class ProfileCardDraggable extends StatelessWidget {
  final int cardNum;
  ProfileCardDraggable(this.cardNum);
  final imageList = ['taqui.jpeg', 'fazenda.jpeg', 'casal.png'];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset('res/${imageList[cardNum]}', fit: BoxFit.cover),            
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Taquicardia',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700)),
                  Padding(padding: EdgeInsets.only(bottom: 8.0)),
                  Text('O ritmo cardíaco acelerado pode não ser causado por doenças subjacentes. Algumas causas comuns são exercícios, medo, ansiedade, estresse, raiva ou amor.',
                      textAlign: TextAlign.start),
                ],
              ))
        ],
      ),
    );
  }
}
