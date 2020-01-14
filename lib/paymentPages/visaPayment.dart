import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../loaderPage.dart';

class VisaPayment extends StatefulWidget {
  @override
  _VisaPaymentState createState() => _VisaPaymentState();
}

class _VisaPaymentState extends State<VisaPayment> {
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
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/visa.png'),
                      buildText('Enter your credit card number'),
                      editextWidget(),
                      buildText('ID card number'),
                      editextWidget(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                buildText('CVV'),
                                editextWidget(),
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/images/calendar.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                buildText('Expire Date'),
                                editextWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
              height: 30.0,
            ),
            Center(
              child: SizedBox(
                height: 45.0,
                width: MediaQuery.of(context).size.width/2,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                  
                  color: ConstantColors.welcomeText,
                  textColor: ConstantColors.whiteColor,
                  child: Text('Payment'),
                  onPressed: (){
                     Navigator.of(context).push(CupertinoPageRoute(
                              builder: (BuildContext context)=>LoaderPage()
                            ));
                    
                  },

                ),
              ),
            ),
              SizedBox(
              height: 30.0,
            ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  editextWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 40.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: ConstantColors.greyShadow)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ConstantColors.greyShadow)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ConstantColors.greyShadow)),
          ),
        ),
      ),
    );
  }

  buildText(text) {
    return Container(
      margin: EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0, bottom: 5.0),
      child: Text(text),
    );
  }
}
