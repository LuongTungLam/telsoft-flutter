import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget message(
    {required String title,
    required String content,
    required Icon icon,
    required String time}) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          width: 40,
          height: 40,
          child: icon,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              Text(
                content,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
