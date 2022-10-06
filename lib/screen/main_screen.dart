import 'package:flutter/material.dart';
import 'package:tab_bar/Widgets/d_to_b.dart';
import '../switch_theme/theme_consrants.dart';
import '../switch_theme/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    _themeManager.addListener(themeChange);
    super.initState();
  }

  dispose() {
    _themeManager.removeListener(themeChange);
    super.dispose();
  }

  themeChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Decimal to Binary"),
          elevation: 0,
          actions: [
            Switch(
                value: _themeManager.themeMode == ThemeMode.dark,
                onChanged: (value1) {
                  _themeManager.toggleTheme(value1);
                })
          ],
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20,top: 10),
              child: Text('Decimal to Binary Converter',style: kLabelText,),
            ),
              SizedBox(height: 20,),
            DecimalToBinary(),
          ],
        ),
      ),
    );
  }
}
