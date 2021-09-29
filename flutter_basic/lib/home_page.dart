import 'package:flutter/material.dart';
import 'package:flutter_basic/contact_page.dart';
import 'package:flutter_basic/news_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: carrot,
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang di Gits Mobile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            Image.asset('assets/images/dash.png',
                width: 250, height: 210, fit: BoxFit.fill),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ContactScreen(
                    contacts: List.generate(
                      20,
                      (i) => Contact(
                        'Name $i',
                        'A description of what needs to be done for Contact $i',
                      ),
                    ),
                  );
                }));
              },
              style: ElevatedButton.styleFrom(
                primary: belizeHole.withOpacity(.85),
              ),
              child: Text(
                'Mulai',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
