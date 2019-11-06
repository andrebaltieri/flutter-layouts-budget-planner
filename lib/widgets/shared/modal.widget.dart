import 'package:flutter/material.dart';

class BPModal extends StatelessWidget {
  final Widget child;
  final double height;

  BPModal({@required this.child, @required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.transparent,
      child: Container(
        height: height,
        padding: EdgeInsets.only(
          top: 30,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        margin: EdgeInsets.only(left: 2, right: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: child,
      ),
    );
  }
}
