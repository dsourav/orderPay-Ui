import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

import '../QrscanResultRestaurent.dart';

class PaySucessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: ConstantColors.paymentDoneBackground,
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/images/circulartick.png'),
                  ),
                  Expanded(
                    child: Text(

                      'Thank you\nfor visiting the \nTurkish restaurant',
                      style: TextStyle(
                          color: ConstantColors.whiteColor, fontSize: 20.0),
                          textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Image.asset('assets/images/op.png'),
                  )
                ],
              ),
            )),
            onTap: (){
              Navigator.of(context).pushReplacement(CupertinoPageRoute(
                builder: (BuildContext context)=>QrCOdeResultRestaurent()
              ));
            },
      ),
    );
  }
}
