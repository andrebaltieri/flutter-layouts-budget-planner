import 'package:capcar/widgets/budget/credit-card-list.widget.dart';
import 'package:capcar/widgets/budget/no-account-card.widget.dart';
import 'package:capcar/widgets/budget/no-cc-card.widget.dart';
import 'package:capcar/widgets/budget/no-spend-limit-card.widget.dart';
import 'package:capcar/widgets/budget/spend-limit-card.widget.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: Text(""),
      ),
      body: ListView(
        children: <Widget>[
          SpendLimitCard(),
          NoSpendLimitCard(),
          CreditCardList(),
          NoCreditCardCard(),
          NoAccountCard(),
        ],
      ),
    );
  }
}
