import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'const.dart';
import 'loginQrPage.dart';

class PhonePinView extends StatefulWidget {
  @override
  _PhonePinViewState createState() => _PhonePinViewState();
}

class _PhonePinViewState extends State<PhonePinView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantColors.whiteColor,
        appBar: AppBar(
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
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Phone Verification ',
                    style: TextStyle(
                      color: ConstantColors.welcomeText,
                      fontSize: 35.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Enter your OTP code here',
                    style: TextStyle(
                      color: ConstantColors.welcomeText,
                      fontSize: 17.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                     customePinView(ConstantColors.welcomeText),
                     SizedBox(width: 10,),
                      customePinView(ConstantColors.welcomeText),
                       SizedBox(width: 10,),
                      customePinView(ConstantColors.welcomeText),
                       SizedBox(width: 10,),
                       customePinView(ConstantColors.welcomeText)
                     

                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Didn't you receive any code?",
                 
                    style: TextStyle(
                      color: ConstantColors.greyColor,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Resent new code",
                 
                    style: TextStyle(
                      color: ConstantColors.greyColor,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  customePinView(fillColor){
    return  SizedBox(
                        width: 55.0,
                        height: 55.0,
                        child: TextField(
                          onSubmitted: (value){
                               Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>LoginQrPage()
                          ));

                          },
                          style:TextStyle(
                            fontSize: 20.0,
                                  color: ConstantColors.whiteColor) ,
                          maxLines: 1,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              
                              hintStyle: new TextStyle(
                                  color: ConstantColors.whiteColor),
                              fillColor: fillColor),
                        ),
                      );
  }
}
