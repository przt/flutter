import 'package:flutter/material.dart';
import 'package:flutter_basic/colors_custom.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text('Saldo Rekening Anda'),
            subtitle: Text(
              'Rp100.000.000,-',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: pomeGranate,
              ),
              onPressed: () {},
              child: const Text('Rekening Lain'),
            ),
          ),
        ],
      ),
    );
  }
}
