import 'package:capcar/widgets/dashboard/spend-tile.widget.dart';
import 'package:capcar/widgets/shared/button-outline.widget.dart';
import 'package:capcar/widgets/shared/card.widget.dart';
import 'package:capcar/widgets/shared/modal.widget.dart';
import 'package:flutter/material.dart';

class LastSpendsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BPCard(
      height: 550,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Últimos lançamentos",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BPButtonOutline(
                label: "Detalhes",
                callback: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return BPModal(
                        height: 500,
                        child: ListView(
                          children: <Widget>[
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                            SpendTile(),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Hoje, 2 Nov 2019",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "-R\$ 17,80",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SpendTile(),
                SpendTile(),
                SpendTile(),
                SpendTile(),
                SpendTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
