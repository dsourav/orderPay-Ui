import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:restaurent_frontend/paymentPages/splitPAymentMEthod.dart';

import '../const.dart';

class SplitPay extends StatefulWidget {
  @override
  _SplitPayState createState() => _SplitPayState();
}

class _SplitPayState extends State<SplitPay> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'How many user to split this amount ?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: ConstantColors.greyColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FloatingActionButton(
                        heroTag: "btn1",
                        mini: true,
                        backgroundColor: ConstantColors.loginpageSignUpButton,
                        onPressed: () {},
                        child: Icon(
                          Icons.remove,
                          color: ConstantColors.whiteColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontSize: 55.0, color: ConstantColors.greyColor),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        heroTag: "btn2",
                        mini: true,
                        backgroundColor: ConstantColors.loginpageSignUpButton,
                        onPressed: () {},
                        child:
                            Icon(Icons.add, color: ConstantColors.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ClipPath(
                  clipper: CustomPointsClipper(),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      color: ConstantColors.inputTextBackground,
                      child: Column(
                        children: <Widget>[
                          buildBillWidget(
                              'All bill',
                              '55\$',
                              ConstantColors.greyColor,
                              20.0,
                              FontWeight.normal),
                          buildBillDivider(),
                          buildBillWidget(
                              'Tip',
                              '5.5\$',
                              ConstantColors.greyColor,
                              20.0,
                              FontWeight.normal),
                          buildBillDivider(),
                          buildBillWidget(
                              'Total:',
                              '60.5\$',
                              ConstantColors.backgroundBlack,
                              30.0,
                              FontWeight.bold),
                          SizedBox(
                            height: 20.0,
                          )
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  'How much would you like to tip?',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: ConstantColors.greyColor),
                ),
              ),
              Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 10.0,
                  activeColor: ConstantColors.loginpageSignUpButton,
                  inactiveColor: ConstantColors.greyShadow,
                  label: '$_value',
                  divisions: 10,
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
              SizedBox(
                height: 20.0,
              ),
              paymentButton(),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  paymentButton() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: ConstantColors.welcomeText),
        child: InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Each pay',
                    style: TextStyle(
                        fontSize: 18.0, color: ConstantColors.whiteColor)),
                Text('30.25\$',
                    style: TextStyle(
                        color: ConstantColors.whiteColor, fontSize: 20.0))
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context) => SplitPAymentMethod()));
          },
        ),
      ),
    );
  }

  buildBillWidget(
      billTile, billPrice, priceColor, pricefontSize, priceFontWeight) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  billTile,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: ConstantColors.greyColor, fontSize: 20.0),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  billPrice,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: priceFontWeight,
                      color: priceColor,
                      fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildBillDivider() {
    return Container(
      height: 1.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      color: ConstantColors.whiteColor.withOpacity(0.7),
    );
  }
}

class CustomPointsClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);

    double x = 0;
    double y = size.height;

    double increment = size.width / 20;

    while (x < size.width) {
      x += increment;
      y = (y == size.height) ? size.height * .92 : size.height;
      path.lineTo(x, y);
    }
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }
}
