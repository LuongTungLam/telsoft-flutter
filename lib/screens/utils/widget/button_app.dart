import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appButton({required String text, required VoidCallback action}) {
  return ElevatedButton(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.orange),
        ),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade800),
    ),
    onPressed: action,
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
