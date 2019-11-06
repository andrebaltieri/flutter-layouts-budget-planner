import 'package:capcar/pages/profile/login.page.dart';
import 'package:capcar/pages/profile/signup.page.dart';
import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/button-light.widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Text(
            "Budget Planner",
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/welcome-pic.png',
            height: 180,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Bem-vindo ao Budget Planner",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            child: Text(
              "Controle e economize seu dinheiro monitorando seus gastos",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: BPButtonDark(
              label: "Cadastrar-se",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: BPButtonLight(
              label: "Entrar",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
