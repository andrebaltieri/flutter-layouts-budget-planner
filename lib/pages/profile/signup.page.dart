import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/input-light.widget.dart';
import 'package:flutter/material.dart';

import 'login.page.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Cadastre-se grátis"),
        centerTitle: true,
        leading: FlatButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Nome",
              keyboard: TextInputType.text,
              password: false,
              capitalization: TextCapitalization.words,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "E-mail",
              keyboard: TextInputType.emailAddress,
              password: false,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: BPInputLight(
              label: "Senha",
              keyboard: TextInputType.text,
              password: true,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Cadastrar",
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
        ],
      ),
    );
  }
}
