import 'package:ORDO_UI/models/product.dart';
import 'package:ORDO_UI/presentation/widgets/product_card_widget.dart';
import 'package:ORDO_UI/presentation/widgets/profile_widget.dart';
import 'package:ORDO_UI/utils/pallete_test_two.dart';
import 'package:ORDO_UI/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestTwoScreen extends StatefulWidget {
  Product product;

  @override
  _TestTwoScreenState createState() => _TestTwoScreenState();
}

class _TestTwoScreenState extends State<TestTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                backgroundColor: whiteColor,
                leading: Padding(
                  padding: const EdgeInsets.fromLTRB(29, 18, 15, 24),
                  child: FaIcon(
                    FontAwesomeIcons.arrowCircleLeft,
                    color: gradient1,
                    size: 20,
                  ),
                ),
                centerTitle: false,
                title: Text(
                  'PORTOFOLIO VENDOR',
                  style: boldTextMain.copyWith(),
                ),
                actions: [
                  IconButton(
                      icon: Image.asset(
                        'assets/icons/test2/notification.png',
                        height: 18,
                      ),
                      // icon: FaDuotoneIcon(),
                      onPressed: () {})
                ],
              )),
          body: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return [
                  SliverList(
                      delegate: SliverChildListDelegate([
                    profileWidget(context),
                  ]))
                ];
              },
              body: Padding(
                padding: const EdgeInsets.fromLTRB(18.5, 0, 18.5, 0),
                child: Column(
                  children: [
                    Expanded(
                        child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                            children: listProduct
                                .map((e) => productCardWidget(context, e))
                                .toList()))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
