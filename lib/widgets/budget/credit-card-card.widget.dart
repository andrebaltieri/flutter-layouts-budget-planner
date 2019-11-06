import 'package:flutter/material.dart';

class CreditCardCard extends StatelessWidget {
  final String holder;
  final String number;

  CreditCardCard({@required this.holder, @required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 45,
            ),
            child: Text(
              this.holder,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 45,
            ),
            child: Text(
              this.number,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new ExactAssetImage('assets/images/credit-card.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
