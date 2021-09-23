import 'package:flutter/material.dart';
import 'package:flutter_basic/colors_custom.dart';

class BankMenu extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? label;

  BankMenu({
    this.icon,
    this.iconColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: iconColor, borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('$label'),
        ],
      ),
    );
  }
}
