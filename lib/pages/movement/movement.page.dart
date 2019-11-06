import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/input-light.widget.dart';
import 'package:flutter/material.dart';

class MovementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: Text(""),
        title: Text(
          "Novo Lançamento",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
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
              "Detalhes",
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
              label: "Tipo",
              keyboard: TextInputType.text,
              capitalization: TextCapitalization.none,
            ),
            SizedBox(
              height: 10,
            ),
            BPInputLight(
              label: "Categoria",
              keyboard: TextInputType.text,
              capitalization: TextCapitalization.none,
            ),
            SizedBox(
              height: 10,
            ),
            BPInputLight(
              label: "Valor",
              keyboard: TextInputType.number,
              capitalization: TextCapitalization.none,
            ),
            SizedBox(
              height: 10,
            ),
            BPInputLight(
              label: "Descrição",
              keyboard: TextInputType.text,
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
    );
  }
}
