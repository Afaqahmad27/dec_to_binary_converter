import 'package:flutter/material.dart';

Widget myButton(String number, [_onPressed, colorPara = Colors.green]) {
  return Container(
    height: 80,
    padding: const EdgeInsets.all(9.0),
    child: ElevatedButton(
      child: Text(
        number.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onPressed: () {
        _onPressed(number);
      },
    ),
  );
}