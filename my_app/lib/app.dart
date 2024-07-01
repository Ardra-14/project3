import 'package:flutter/material.dart';
import 'package:my_app/bottomSheet.dart';
import 'package:my_app/homeScreen.dart';
import 'package:my_app/valueNotifyer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Notifyer(),
      // home: BottomSheetSample(),
      // home: HomeScreen(),
    );
  }
}
