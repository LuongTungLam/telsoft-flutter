import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dividerApp({required String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Divider(
            color: Colors.black,
          ),
        ),
      ),
      Text(text),
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Divider(
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}
