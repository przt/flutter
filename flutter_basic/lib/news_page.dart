import 'package:flutter/material.dart';
import 'package:flutter_basic/colors_custom.dart';
import 'package:flutter_basic/widget/card_news.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GITS NEWS'),
        backgroundColor: belizeHole,
      ),
      backgroundColor: carrot,
      body: ListView(
        children: [
          CardNews(
            newsHeader: 'Kasus Baru Corona RI 28 September',
            newsSubHeader: 'Caranya',
            newsImage: 'sub.jpg',
          ),
          CardNews(
            newsHeader: 'Cegah Gelombang Covid-19 Ketiga',
            newsSubHeader: 'Menkominfo: Tetap Disipilin Prokes!',
            newsImage: 'sub2.jpeg',
          ),
          CardNews(
            newsHeader: 'Antisipasi Kasus Seperti Di Singapura',
            newsSubHeader: 'RI Diminta tetap waspada',
            newsImage: 'sub3.jpeg',
          ),
          CardNews(
            newsHeader: 'Amuk Warga Aceh Juga Bikin Lebam-Puluhan',
            newsSubHeader: 'Viral Vaksin COVID Rusak',
            newsImage: 'sub4.jpeg',
          ),
        ],
      ),
    );
  }
}
