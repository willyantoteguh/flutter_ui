import 'package:flutter/material.dart';

import '../../../utils/pallete_test_three.dart';

Widget tableColumnWidget() {
  return Expanded(
    child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID Transaksi',
                      style: idTransaksiText.copyWith(fontSize: 10),
                    ),
                    Text('#EC1201211', style: idText.copyWith(fontSize: 10))
                  ],
                )),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rebate',
                      style: idTransaksiText.copyWith(fontSize: 10),
                    ),
                    Text('Rp. 150.000',
                        style: rebateText.copyWith(fontSize: 10))
                  ],
                )),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanggal',
                      style: idTransaksiText.copyWith(fontSize: 10),
                    ),
                    Text('14 Juli 2021',
                        style: rebateText.copyWith(fontSize: 10))
                  ],
                )),
              ],
            ),
          );
        }),
  );
}
