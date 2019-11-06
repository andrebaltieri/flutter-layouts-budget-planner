import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/card.widget.dart';
import 'package:flutter/material.dart';

class NoCreditCardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BPCard(
      height: 400,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "Você ainda não cadastrou nenhum cartão de crédito",
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/no-credit-card-pic.png'),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: BPButtonDark(
              label: "Adicionar",
              callback: () {},
            ),
          ),
        ],
      ),
    );
  }
}
