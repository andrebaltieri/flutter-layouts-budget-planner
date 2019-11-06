import 'package:capcar/pages/welcome.page.dart';
import 'package:capcar/widgets/dashboard/last-spends-card.widget.dart';
import 'package:capcar/widgets/dashboard/spend-limit-card.widget.dart';
import 'package:capcar/widgets/shared/avatar.widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Dashboard"),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: BPAvatar(
            image:
                'https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Sair"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SpendLimitCard(),
          LastSpendsCard()
        ],
      ),
    );
  }
}
