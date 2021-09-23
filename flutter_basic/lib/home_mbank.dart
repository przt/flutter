import 'package:flutter/material.dart';
import 'package:flutter_basic/colors_custom.dart';
import 'package:flutter_basic/widget/balance_info.dart';
import 'package:flutter_basic/widget/menu_bank.dart';
import 'package:flutter_basic/widget/promo_info.dart';

class MobileBanking extends StatefulWidget {
  const MobileBanking({Key? key}) : super(key: key);

  @override
  _MobileBankingState createState() => _MobileBankingState();
}

class _MobileBankingState extends State<MobileBanking> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GITS Mobile",
          style: TextStyle(
            color: pomeGranate,
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            color: pomeGranate,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: BalanceInfo(),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[
              BankMenu(
                icon: Icons.phone_android_outlined,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'Pulsa/Data',
              ),
              BankMenu(
                icon: Icons.account_balance_wallet,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'Transfer',
              ),
              BankMenu(
                icon: Icons.wallet_giftcard_rounded,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'Digital',
              ),
              BankMenu(
                icon: Icons.wallet_membership_rounded,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'GITFLAZZ',
              ),
              BankMenu(
                icon: Icons.qr_code_outlined,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'Kode QR',
              ),
              BankMenu(
                icon: Icons.more_horiz,
                iconColor: pomeGranate.withOpacity(.2),
                label: 'Lainnya',
              ),
            ],
          ),
          Container(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              children: <Widget>[
                PromotionInfo(
                  promoHeader: 'Promo GITS',
                  promoSubHeader: 'Bonus Pulsa Telepon Tri',
                  promoImage: 'minim2.png',
                ),
                PromotionInfo(
                  promoHeader: 'Promo GITS',
                  promoSubHeader: 'Pembayaran WOM Finance',
                  promoImage: 'minim2.png',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: pomeGranate,
        unselectedItemColor: pomeGranate.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Mutasi'),
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            title: Text('Transfer'),
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
            title: Text("Aktivitas"),
            icon: Icon(Icons.mail_outline),
          ),
          BottomNavigationBarItem(
            title: Text("Akun"),
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
