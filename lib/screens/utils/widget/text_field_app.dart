import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textFieldApp(
    {required String label,
    required String placeholder,
    required String value}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
        alignment: Alignment.topLeft,
        child: Text(
          label,
          style: TextStyle(fontSize: 11, color: Colors.black54),
        ),
      ),
      TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.orange.shade800),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: placeholder,
            hintStyle: TextStyle(color: Colors.black26)),
      ),
    ],
  );
}
