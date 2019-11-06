import 'package:capcar/widgets/shared/button-outline.widget.dart';
import 'package:capcar/widgets/shared/card.widget.dart';
import 'package:flutter/material.dart';

class SpendLimitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BPCard(
      height: 230,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Limite Mensal",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BPButtonOutline(
                label: "Detalhes",
                callback: () {},
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "GASTOS",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              Text(
                "LIMITE",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "R\$ 250,38",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "R\$ 8.750,00",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            height: 30,
            child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor,
              ),
              key: new Key("25"),
              value: 0.2,
              backgroundColor: Color(0xFFEFF0F5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "01/01/2019",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              Text(
                "31/01/2019",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
