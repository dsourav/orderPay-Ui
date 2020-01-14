import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

import 'check.dart';

class CookingOptionPAge extends StatefulWidget {
  @override
  _CookingOptionPAgeState createState() => _CookingOptionPAgeState();
}

class _CookingOptionPAgeState extends State<CookingOptionPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.loginpageSignUpButton,
      body: ListView(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          Center(
            child: Container(
              height: 120.0,
              width: 120.0,
              child:
                  Image.asset('assets/images/cookIcon.png', fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
              child: Text(
            'Prepare the food for you\n You always can',
            style: TextStyle(fontSize: 28.0, color: ConstantColors.whiteColor),
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 30.0,
          ),
          buttonWidget('Add more food',context,moreFoodButtonTap),
           SizedBox(
            height: 10.0,
          ),
          Center(child: Text('Or',style: TextStyle(fontSize: 30.0,color: ConstantColors.whiteColor),)),

          SizedBox(
            height: 10.0,
          ),
          buttonWidget('Go to check',context,gotoCheckButtonTap),
           SizedBox(
            height: 10.0,
          ),


        ],
      ),
    );
  }

  moreFoodButtonTap(){
   Navigator.of(context).pop();
   Navigator.of(context).pop();
   Navigator.of(context).pop();

  }

  gotoCheckButtonTap(){
     Navigator.of(context).push(CupertinoPageRoute(
                              builder: (BuildContext context)=>CheckPage()
                            ));

  }

  buttonWidget(text,context,VoidCallback callback) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 44.0,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: ConstantColors.loginButtonBakground,
          textColor: ConstantColors.whiteColor,
          child: Text(text),
          onPressed:callback
          
          // () {
            //         Navigator.of(context).push(CupertinoPageRoute(
            //   builder: (BuildContext context)=>LoginPhonAuth()
            // ));
         // },
        ),
      ),
    );
  }
}
