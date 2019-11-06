import 'package:flutter/material.dart';

class BPInputLight extends StatelessWidget {
  final String label;
  final TextInputType keyboard;
  final TextCapitalization capitalization;
  final bool password;

  BPInputLight({
    @required this.label,
    this.keyboard = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.password = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xFFD8D8D8),
        ),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              textCapitalization: this.capitalization,
              keyboardType: keyboard,
              obscureText: password,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black.withOpacity(0.4),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: label,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          password ? Icon(Icons.remove_red_eye) : SizedBox(),
        ],
      ),
    );
  }
}
