import 'package:flutter/material.dart';

class BPButtonOutline extends StatelessWidget {
  final String label;
  final Function callback;

  BPButtonOutline({
    @required this.label,
    @required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xFFD8D8D8),
        ),
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(label),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
            ),
          ],
        ),
        onPressed: callback,
      ),
    );
  }
}
