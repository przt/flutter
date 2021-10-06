import 'package:flutter/material.dart';
import 'package:flutter_basic/contact_page.dart';
import 'package:flutter_basic/home_mbank.dart';
import 'package:flutter_basic/home_page.dart';
import 'package:flutter_basic/transfer_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
