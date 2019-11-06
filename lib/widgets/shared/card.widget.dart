import 'package:flutter/material.dart';

class BPCard extends StatelessWidget {
  final Widget child;
  final double height;

  BPCard({@required this.child, @required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: height,
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
      child: child,
    );
  }
}
