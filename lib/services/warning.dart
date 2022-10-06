import 'package:flutter/material.dart';

Future warning(context){
  return showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: const Text(
            "The Digits Limit Reached please retry!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text("Limit Exceeded"),
          actions: <Widget>[
            ElevatedButton(
              child: const Text(
                "Try Again",
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}