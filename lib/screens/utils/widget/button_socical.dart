import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonSocical({required String text, required String image}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.transparent),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            image,
            width: 40,
            height: 40,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              text.toUpperCase(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    ),
    onPressed: () {},
  );
}
