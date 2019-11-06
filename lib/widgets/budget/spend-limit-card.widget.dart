import 'package:flutter/material.dart';

class SpendLimitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 140,
      child: Column(
        children: <Widget>[
          Text(
            "Limite de Gastos Mensal",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "R\$ 8.750,00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Editar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
