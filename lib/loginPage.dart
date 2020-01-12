import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/signUppage.dart';

import 'const.dart';
import 'forgotPassword.dart';
import 'loginPhoneAuth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(0.0),
                        height: MediaQuery.of(context).size.height / 2.3,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/login_back.png',
                          fit: BoxFit.fill,
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.6,
                      width: double.infinity,
                      color: ConstantColors.backgroundBlack.withOpacity(0.3),
                    )
                  ],
                ),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 40.0),
                        child: Wrap(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(top: 70.0),
                                child: Image.asset(
                                  'assets/images/op.png',
                                  scale: 1.7,
                                )),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Order & pay',
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'for your meal\t.',
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Container(
                  width: double.infinity,
                  height: 25.0,
                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: ConstantColors.whiteColor),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: ConstantColors.whiteColor,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: ConstantColors.welcomeText,
                          fontSize: 28.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Login to your account',
                        style: TextStyle(
                          color: ConstantColors.greyColor,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      editTextFieldWidget('Email'),
                      SizedBox(
                        height: 8.0,
                      ),
                      editTextFieldWidget('Password'),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 44.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                            color: ConstantColors.loginButtonBakground,
                            textColor: ConstantColors.whiteColor,
                            child: Text('Login'),
                            onPressed: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>LoginPhonAuth()
                          ));
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FlatButton(
                        
                                              child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: ConstantColors.greyColor,
                            fontSize: 15.0,
                          ),
                        ),
                        onPressed: (){
                              Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>ForGorPassWord()
                          ));
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? ",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: ConstantColors.greyColor,
                              )),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            child: InkWell(
                              child: Text("Sign up",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: ConstantColors.loginpageSignUpButton,
                                  )),
                              onTap: () {
                                 Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>SignUpPage()
                          ));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  editTextFieldWidget(hint) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
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
