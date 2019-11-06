import 'package:capcar/widgets/budget/credit-card-card.widget.dart';
import 'package:flutter/material.dart';

class CreditCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CreditCardCard(
            holder: "ANDRE L A BALTIERI",
            number: "****-****-****-9876",
          ),
          CreditCardCard(
            holder: "BALTIERI, ANDRE",
            number: "****-****-****-5432",
          ),
        ],
      ),
    );
  }
}
