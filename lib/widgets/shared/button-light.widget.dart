import 'package:flutter/material.dart';

class BPButtonLight extends StatelessWidget {
  final String label;
  final Function callback;

  BPButtonLight({
    @required this.label,
    @required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: FlatButton(
        onPressed: callback,
        child: Text(
          label,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
