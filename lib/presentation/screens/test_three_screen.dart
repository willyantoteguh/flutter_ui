import 'package:ORDO_UI/presentation/widgets/test3/balance_card_widget.dart';
import 'package:ORDO_UI/presentation/widgets/test3/button_complain_widget.dart';
import 'package:ORDO_UI/presentation/widgets/test3/button_widget.dart';
import 'package:ORDO_UI/presentation/widgets/test3/header_table_widget.dart';
import 'package:ORDO_UI/presentation/widgets/test3/item_rebate_widget.dart';
import 'package:ORDO_UI/presentation/widgets/test3/table_column_widget.dart';
import 'package:ORDO_UI/utils/pallete_test_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/pallete_test_three.dart';
import '../widgets/app_bar.dart';

class TestThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isTestThree = true;

    return Container(
      color: whiteColor,
      child: SafeArea(
        child: Scaffold(
            appBar: appBar(
                asset: 'assets/icons/test3/asses.png',
                color: orangeColor,
                isTestThree: true,
                title: 'FINANSIAL'),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    balanceCardWidget(
                        status: 'total bonus', balance: 'Rp. 5.000.000,00'),
                    SizedBox(height: 15),
                    balanceCardWidget(
                        status: 'pending bonus', balance: 'Rp. 50.000,00'),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 420,
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 23, bottom: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: greyColor.withOpacity(0.5),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              headerTableWidget(),
                              Divider(
                                color: Color(0xffBBBBBB),
                                thickness: 1.0,
                              ),
                              tableColumnWidget()
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 420,
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 23, bottom: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: greyColor.withOpacity(0.5),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Riwayat Rebate',
                                style: orangeText.copyWith(
                                    fontWeight: FontWeight.w700),
                              ),
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 6,
                                    itemBuilder: (context, i) {
                                      return itemRebateWidget();
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 90)
                  ],
                ),
              ),
            ),
            // bottomSheet: DecoratedBox(
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [gradient1, gradient2])),
            //   child: ConstrainedBox(
            //     constraints: BoxConstraints.tightFor(width: 300, height: 200),
            //     child: ElevatedButton(
            //       child: Text('300 x 200'),
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buttonComplainWidget(
                    buttonText: "Complain",
                    context: context,
                    onpress: () {},
                    width: double.infinity),
                    SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
