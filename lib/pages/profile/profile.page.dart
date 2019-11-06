import 'package:capcar/widgets/shared/avatar.widget.dart';
import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/input-light.widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: Text(""),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.1, 0.1, 1.0],
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
              Color(0xFFFCFCFF),
              Color(0xFFFCFCFF),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0.5,
                      0.5,
                    ),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: BPAvatar(
                      image: 'https://placehold.it/80',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "André Baltieri",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "andre@balta.io",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0.5,
                      0.5,
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Editar perfil",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BPInputLight(
                    label: "Nome",
                    keyboard: TextInputType.text,
                    capitalization: TextCapitalization.none,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BPInputLight(
                    label: "E-mail",
                    keyboard: TextInputType.emailAddress,
                    capitalization: TextCapitalization.none,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: BPButtonDark(
                      label: "Salvar",
                      callback: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
