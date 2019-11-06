import 'package:capcar/widgets/shared/avatar.widget.dart';
import 'package:flutter/material.dart';

class SpendTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        child: BPAvatar(
          image: 'https://placehold.it/80',
        ),
      ),
      title: Text(
        "Alimentação",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text("Cafeteria Santo Antônio"),
      trailing: Text(
        "-R\$ 7,80",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
