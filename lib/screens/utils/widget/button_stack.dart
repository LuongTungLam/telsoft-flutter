import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonStack(
    {required String text,
    required String image,
    required VoidCallback action}) {
  return GestureDetector(
    child: Container(
      child: Column(
        children: [
          Stack(children: [
            Image.asset(
              image,
              width: 55,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/images/ic_function_hot.png",
                width: 25,
              ),
            )
          ]),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    onTap: action,
  );
}
