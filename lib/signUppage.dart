import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';
import 'package:restaurent_frontend/loginPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkBox = true;
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
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              Expanded(
                          child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Create an Account',
                          style: TextStyle(
                            color: ConstantColors.welcomeText,
                            fontSize: 28.0,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        editTextFieldWidget('Username'),
                        SizedBox(
                          height: 10.0,
                        ),
                        editTextFieldWidget('Email'),
                        SizedBox(
                          height: 10.0,
                        ),
                        editTextFieldWidget('Password'),
                        SizedBox(
                          height: 10.0,
                        ),
                        editTextFieldWidget('Cell Number'),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: checkBox,
                              activeColor: ConstantColors.loginpageSignUpButton,
                              onChanged: (value) {
                                setState(() {
                                  checkBox = value;
                                });
                              },
                            ),
                            Text(
                              'Lorum lipsum',
                              style: TextStyle(
                                color: ConstantColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: SizedBox(
                            width: double.infinity,
                            height: 44.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: ConstantColors.loginButtonBakground,
                              textColor: ConstantColors.whiteColor,
                              child: Text('Create Account'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Have an account? ",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: ConstantColors.greyColor,
                              )),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            child: InkWell(
                              child: Text("Login Now",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: ConstantColors.loginpageSignUpButton,
                                  )),
                              onTap: () {
                                 Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>LoginPage()
                          ));
                              },
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
        ));
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
