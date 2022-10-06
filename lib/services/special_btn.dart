import 'package:flutter/material.dart';

class SpecialBtn extends StatelessWidget {
  SpecialBtn({this.onPress,required this.myIcon, required this.bgClr,required this.fgClr,Key? key}) : super(key: key);
  void Function()? onPress;
  IconData myIcon;
  Color bgClr;
  Color fgClr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      height: 100.0,
      child: MaterialButton(
        onPressed:onPress,
        color: bgClr,
        child: Icon(
          myIcon,
          color: fgClr,
          size: 36.0,
        ),
      ),
    );
  }
}
