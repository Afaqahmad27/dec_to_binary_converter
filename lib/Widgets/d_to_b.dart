import 'package:flutter/material.dart';
import 'package:tab_bar/services/btn.dart';
import 'package:tab_bar/services/special_btn.dart';
import '../services/result.dart';
import '../services/warning.dart';

class DecimalToBinary extends StatefulWidget {
  @override
  State<DecimalToBinary> createState() => _DecimalToBinaryState();
}

class _DecimalToBinaryState extends State<DecimalToBinary> {
  String _binary = "0";
  String _decimal = "";

  void _onPressed(String num) {
    setState(() {
      if (_binary.split('').length < 30) {
        _decimal += num;
        _binary = int.parse(_decimal, radix: 10).toRadixString(2);
      } else {
        warning(context);
      }
    });
  }

  void _reset() {
    setState(() {
      _binary = '';
      _decimal = '';
    });
  }

  void _delete() {
    setState(() {
      try {
        if (_decimal.split('').length > 1) {
          _decimal = _decimal.substring(0, _decimal.split('').length - 1);
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
        } else {
          _binary = '0';
          _decimal = '';
        }
      } catch (e) {
        print('Size');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            results(_decimal, _binary),
            Container(
              child: Table(
                children: [
                  TableRow(
                    children: [
                      myButton('9', _onPressed),
                      myButton('8', _onPressed),
                      myButton('7', _onPressed),
                    ],
                  ),TableRow(
                    children: [
                      myButton('6', _onPressed),
                      myButton('5', _onPressed),
                      myButton('4', _onPressed),
                    ],
                  ),TableRow(
                    children: [
                      myButton('3', _onPressed),
                      myButton('2', _onPressed),
                      myButton('1', _onPressed),
                    ],
                  ),
                  TableRow(
                    children: [
                      SpecialBtn(onPress: (){
                        _reset();
                      }, myIcon: Icons.restart_alt_sharp, bgClr: toCheck ? Color(
                          0xFFFAA0A0):Color(
                          0xFFB80000),
                      fgClr:toCheck ? Colors.black:Colors.white,
                      ),
                      SpecialBtn(onPress: (){_delete();},myIcon:Icons.arrow_back_rounded, bgClr: toCheck ? Color(
                          0xFFE2E2E2):Color(
                          0xFF4B4B4B), fgClr:toCheck ? Colors.black: Colors.white,),
                      Container(
                          height: 100,
                          child: myButton('0', _onPressed)),
                    ],
                  ),
                ],
              ),
            ),])
    );

  }
}


// Widget buttoms_decimal(){
//   return
// }