import 'package:flutter/material.dart';
import 'package:flutter_basic/widget/balance_info.dart';

class TransferForm extends StatefulWidget {
  const TransferForm({Key? key}) : super(key: key);

  @override
  _TransferFormState createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
              Text("Transfer Ke Bank Dalam Negeri"),
              BalanceInfo(),
              SizedBox(),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Rekening Tujuan',
                  hintText: 'Masukkan Rekening Tujuan',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Jumlah',
                  hintText: 'Masukkan Jumlah',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  hintText: 'Masukkan Deskripsi',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nomor Referensi Pelanggan',
                  hintText: 'Masukkan Nomor Referensi Pelanggan',
                ),
              ),
            ],
          )
    );
  }
}
