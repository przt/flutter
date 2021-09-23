import 'package:flutter/material.dart';

class PromotionInfo extends StatelessWidget {
  final String? promoHeader;
  final String? promoSubHeader;
  final String? promoImage;

  PromotionInfo({
    this.promoHeader,
    this.promoSubHeader,
    this.promoImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          Image.asset('assets/images/$promoImage',
              width: 50, height: 50, fit: BoxFit.fill),
          ListTile(
            title: Text("$promoHeader"),
            subtitle: Text(
              "$promoSubHeader",
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
