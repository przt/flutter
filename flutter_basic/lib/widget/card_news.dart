import 'package:flutter/material.dart';
import 'package:flutter_basic/colors_custom.dart';
import 'package:flutter_basic/detail_news_page.dart';

class CardNews extends StatelessWidget {
  final String? newsHeader;
  final String? newsSubHeader;
  final String? newsImage;

  CardNews({
    this.newsHeader,
    this.newsSubHeader,
    this.newsImage,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Image.asset('assets/images/$newsImage',
              width: 150, height: 150, fit: BoxFit.fill),
          ListTile(
            title: Text("$newsHeader"),
            subtitle: Text(
              "$newsSubHeader",
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailNewsPage();
                }),
              );
            },
            child: Text('Lihat Selengkapnya'),
            style: ElevatedButton.styleFrom(
              primary: belizeHole.withOpacity(.80),
            ),
          )
        ],
      ),
    );
  }
}
