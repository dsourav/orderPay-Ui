import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/paymentPages/visaPayment.dart';

import '../const.dart';

class SplitPAymentMethod extends StatefulWidget {
  @override
  _SplitPAymentMethodState createState() => _SplitPAymentMethodState();
}

class _SplitPAymentMethodState extends State<SplitPAymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantColors.whiteColor,
        appBar: AppBar(
          backgroundColor: ConstantColors.whiteColor,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Check",
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: ConstantColors.greyColor),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: ConstantColors.greyColor,
                size: 30.0,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Dinner 1 payment proceed",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: ConstantColors.greyColor),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 1.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  color: ConstantColors.greyColor.withOpacity(0.7),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: double.infinity,
                  child: Card(
                    elevation: 8.0,
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "First dinner payment",
                        style: TextStyle(
                            fontSize: 17.0, color: ConstantColors.greyColor),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "30.25\$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 30.0, color: ConstantColors.greyColor),
                      ),
                       SizedBox(
                        height: 20.0,
                      ),
                      buildPAymentButton(
                          'assets/images/paypal.png', paypalButtonTap),
                      buildPAymentButton(
                          'assets/images/visa.png', visaButtonTap),
                      buildPAymentButton(
                          'assets/images/bitcoin.png', bitcoinButtonTap),
                      buildPAymentButton(
                          'assets/images/bit.png', bitButtonTap),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  paypalButtonTap() {}
  visaButtonTap() {
        Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context) => VisaPayment()));
  }
  bitcoinButtonTap() {}
  bitButtonTap() {}

  buildPAymentButton(image, VoidCallback callback) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: MediaQuery.of(context).size.width / 1.4,
      height: 70.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: ConstantColors.backgroundBlack,
          )),
      child: InkWell(
        child: Container(
          child: Center(
            child: Image.asset(image),
          ),
        ),
        onTap: callback,
      ),
    );
  }
}
