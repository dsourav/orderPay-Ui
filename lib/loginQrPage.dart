import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'QrscanResultRestaurent.dart';
import 'const.dart';

class LoginQrPage extends StatefulWidget {
  @override
  _LoginQrPageState createState() => _LoginQrPageState();
}

class _LoginQrPageState extends State<LoginQrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: ConstantColors.whiteColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ConstantColors.greyColor,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Where are you?',
                              style: TextStyle(
                                color: ConstantColors.welcomeText,
                                fontSize: 35.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Scan the QR on your table',
                              style: TextStyle(
                                color: ConstantColors.greyColor,
                                fontSize: 16.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 120.0,
                      ),
                      Image.asset(
                        'assets/images/qrcode.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0)),
              child: Text('Scan'),
              color: ConstantColors.welcomeText,
              textColor: ConstantColors.whiteColor,
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        QrCOdeResultRestaurent()));
              },
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              "Don't have one on your table?",
              style: TextStyle(
                color: ConstantColors.greyColor,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                "Report Us",
                style: TextStyle(
                  color: ConstantColors.loginpageSignUpButton,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
