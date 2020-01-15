import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/payPages/splitPay.dart';

import '../const.dart';
import '../loaderPage.dart';
class FullPaypaymentMethod extends StatefulWidget {
  @override
  _FullPaypaymentMethodState createState() => _FullPaypaymentMethodState();
}

class _FullPaypaymentMethodState extends State<FullPaypaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                      margin: EdgeInsets.only(left: 20.0, top: 40.0),
                      child: Text(
                        'Check',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: ConstantColors.greyColor),
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
                      child: SingleChildScrollView(
                                              child: Column(
                          children: <Widget>[

                            
                             builPaymentWidget('assets/images/paypal.png','souravcse94@gmail'),
                             builPaymentWidget('assets/images/visa.png','**** **** **** 1234'),
                             builPaymentWidget('assets/images/visa.png','**** **** **** 1234'),

                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      )),
                ),
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
          ],
        ),
      ),

      
    );
  }

  builPaymentWidget(image,text){

  return  Container(
                            margin: EdgeInsets.only(top:15.0,right: 15.0,left: 15.0),
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ConstantColors.fullPayPAymentBackgroundColor,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 35.0,
                                  child: Image.asset(image)),
                                  Expanded(child: Text(text,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color:ConstantColors.backgroundBlack)),)
                              ],
                            )
                          );
   ;
  }
}