import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonGrid(
    {required String text,
    required String image,
    required VoidCallback action}) {
  return GestureDetector(
    child: Column(
      children: [
        Expanded(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
    onTap: action,
  );
}
