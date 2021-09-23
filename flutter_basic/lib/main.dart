import 'package:flutter/material.dart';
import 'package:flutter_basic/home_mbank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MobileBanking(),
    );
  }
}
