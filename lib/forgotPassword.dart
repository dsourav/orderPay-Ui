
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

class ForGorPassWord extends StatefulWidget {
  @override
  _ForGorPassWordState createState() => _ForGorPassWordState();
}

class _ForGorPassWordState extends State<ForGorPassWord> {



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

        body:    Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: ConstantColors.welcomeText,
                            fontSize: 28.0,
                          ),
                        ),

                    SizedBox(height: 40.0,),
                     Container(
                        margin: EdgeInsets.only(left: 10.0),
                       child: Text(
                                'Please enter your email id we will recover your password to mail you',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ConstantColors.greyColor,
                                  fontSize: 15.0
                                ),
                              ),
                     ),
                      SizedBox(height: 40.0,),

                     editTextFieldWidget('Email'),
                      SizedBox(height: 40.0,),
                       Container(
                          child: SizedBox(
                            width: double.infinity,
                            height: 44.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: ConstantColors.loginButtonBakground,
                              textColor: ConstantColors.whiteColor,
                              child: Text('Send'),
                              onPressed: () {},
                            ),
                          ),
                        ),
              ],
            ),
          )
          ,),

      
    );
  }

    editTextFieldWidget(hint) {
    return Container(
      child: SizedBox(
        height: 50.0,
        child: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            fillColor: ConstantColors.inputTextBackground,
            filled: true,
            hintStyle: TextStyle(color: ConstantColors.greyColor),
            hintText: hint,
          ),
        ),
      ),
    );
  }
}