import 'package:flutter/material.dart';

Widget results(_binary, _decimal) {
  return Container(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            _binary,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                fontSize: 35),
          ),
          Text(
            _decimal,
            textAlign: TextAlign.right,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ],
      ));
}