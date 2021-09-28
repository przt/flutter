import 'package:flutter/material.dart';

class DetailNewsPage extends StatefulWidget {
  const DetailNewsPage({Key? key}) : super(key: key);

  @override
  _DetailNewsPageState createState() => _DetailNewsPageState();
}

class _DetailNewsPageState extends State<DetailNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('Belum Passing Data'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
          )
          // Text(''),
        ],
      ),
    );
  }
}
