import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/phonePinview.dart';

import 'const.dart';

class LoginPhonAuth extends StatefulWidget {
  @override
  _LoginPhonAuthState createState() => _LoginPhonAuthState();
}

class _LoginPhonAuthState extends State<LoginPhonAuth> {

  String _countryCode = '+90';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Verify your \nphone number ',
                  style: TextStyle(
                    color: ConstantColors.welcomeText,
                    fontSize: 35.0,
                  ),
                  textAlign: TextAlign.center,
                ),

              
              ),
              SizedBox(height: 25.0,),

                Text(
                  'We have sent you an SMS with a code to\n number +9050001213456 ',
                  style: TextStyle(
                    color: ConstantColors.welcomeText,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),

                 SizedBox(height: 35.0,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal:40.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: ConstantColors.inputTextBackground
                      ),
                      child: Row(
                children: <Widget>[
                  CountryCodePicker(
                    padding: EdgeInsets.only(right: 0.0),
                      onChanged: (code) {
                        _countryCode = code.dialCode;
                        //  print(_countryCode);
                      },
                      initialSelection: '+90',
                      favorite: ['+90', 'FR'],
                      showCountryOnly: false,
                      alignLeft: false,
                  ),
                  Icon(Icons.arrow_drop_down),
                  Expanded(
                      child: Form(
                   
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextFormField(
                            
                            validator: (value) {
                              if (value.length <= 0) return 'Enter number';
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            decoration:
                                InputDecoration(hintText: '500123456',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
                    ),

                     SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal:40.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 44.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: ConstantColors.loginButtonBakground,
                              textColor: ConstantColors.whiteColor,
                              child: Text('Next'),
                              onPressed: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>PhonePinView()
                          ));
                              },
                            ),
                          ),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
