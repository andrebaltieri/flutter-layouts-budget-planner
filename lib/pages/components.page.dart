import 'package:capcar/widgets/shared/avatar.widget.dart';
import 'package:capcar/widgets/shared/button-dark.widget.dart';
import 'package:capcar/widgets/shared/button-light.widget.dart';
import 'package:capcar/widgets/shared/button-outline.widget.dart';
import 'package:capcar/widgets/shared/card.widget.dart';
import 'package:capcar/widgets/shared/input-light.widget.dart';
import 'package:capcar/widgets/shared/modal.widget.dart';
import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            BPButtonDark(
              label: "BP Button Dark (Modal)",
              callback: () {
                showModalBottomSheet(
                  context: context,
                  builder: (builder) {
                    return BPModal(
                      height: 500,
                      child: ListView(
                        children: <Widget>[
                          Text("BP Modal"),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            BPButtonLight(
              label: "BP Button Light",
              callback: () {},
            ),
            SizedBox(
              height: 20,
            ),
            BPButtonOutline(
              label: "BP Button Outline",
              callback: () {},
            ),
            SizedBox(
              height: 20,
            ),
            BPCard(
              height: 200,
              child: Text("BP Card"),
            ),
            SizedBox(
              height: 20,
            ),
            BPInputLight(
              label: "BP Input Light (Text)",
            ),
            SizedBox(
              height: 20,
            ),
            BPInputLight(
              label: "BP Input Light (Name)",
              capitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 20,
            ),
            BPInputLight(
              label: "BP Input Light (Email)",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            BPInputLight(
              label: "BP Input Light (Password)",
              password: true,
            ),
          ],
        ),
      ),
    );
  }
}
