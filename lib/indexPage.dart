import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:restaurent_frontend/const.dart';
import 'package:restaurent_frontend/loginPage.dart';
import 'package:restaurent_frontend/signUppage.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      backgroundColor: ConstantColors.welcomeText,
      boxShadow: [
        BoxShadow(
          color: ConstantColors.drawerShadow,
          blurRadius: 0.0,
          spreadRadius: 10.0,
          offset: Offset(
            0.0,
            3.0,
          ),
        )
      ],
      key: _innerDrawerKey,
      onTapClose: true, // default false
      swipe: true,
      scale: IDOffset.horizontal(0.8), // set the offset in both directions

      proportionalChildArea: true, // default true
      borderRadius: 10,
      leftAnimationType: InnerDrawerAnimation.quadratic,
      leftChild: Material(
        color: ConstantColors.welcomeText,
        child: Container(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 15),
                          child: Text('Delyo',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontSize: 35)),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: Text('Sign In',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontSize: 18)),
                            ),
                            Container(
                              height: 30.0,
                              width: 1.0,
                              color: ConstantColors.greyShadow,
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontSize: 18)),
                            ),
                          ],
                        )
                      ],
                      //mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/6,),
                    ListTile(
                      onTap: () => print(""),
                      title: Text(
                        "Search",
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.search,
                        color: ConstantColors.whiteColor,
                        size: 22,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Basket",
                        style: TextStyle(
                            fontSize: 14,
                            color: ConstantColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.add_shopping_cart,
                        color: ConstantColors.whiteColor,
                        size: 22,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Discount",
                        style: TextStyle(
                            fontSize: 14,
                            color: ConstantColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.radio_button_checked,
                        color: ConstantColors.whiteColor,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25.0, left: 40.0),
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.settings,
                                  color: ConstantColors.whiteColor),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Settings',
                                style:
                                    TextStyle(color: ConstantColors.whiteColor),
                              )
                            ],
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.headset,
                                  color: ConstantColors.whiteColor),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Support',
                                style:
                                    TextStyle(color: ConstantColors.whiteColor),
                              )
                            ],
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ))
            ].where((a) => a != null).toList(),
          ),
        ),
      ),
      scaffold: Scaffold(
        backgroundColor: ConstantColors.backgroundBlack,
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/login_back.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  child: Container(
                    //   margin: EdgeInsets.only(left: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 40.0),
                              child: Wrap(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(top: 70.0),
                                      child: Image.asset(
                                        'assets/images/op.png',
                                        scale: 1.3,
                                      )),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Order & pay',
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontSize: 35.0,
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
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40.0, bottom: 15.0),
                          alignment: Alignment.bottomLeft,
                          child: Text('Login to your account',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: ConstantColors.whiteColor,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      buildFacebookGoogleButton(
                          null,
                          'assets/images/fb.png',
                          'Login with facebook',
                          ConstantColors.facebookButtonBackground),
                      SizedBox(
                        height: 17.0,
                      ),
                      buildFacebookGoogleButton(
                          null,
                          'assets/images/google.png',
                          'Login with Google',
                          ConstantColors.googlekButtonBackground),
                      SizedBox(
                        height: 17.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              height: 2.0,
                              color: ConstantColors.dividerLogin,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Or',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    // fontWeight: FontWeight.bold,
                                    color: ConstantColors.whiteColor,
                                  )),
                            ),
                            Expanded(
                                child: Container(
                              height: 2.0,
                              color: ConstantColors.dividerLogin,
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17.0,
                      ),
                      Container(
                        height: 45.0,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 40.0, right: 40.0),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ConstantColors.loginButtonShadow,
                                blurRadius: 15.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.0,
                                  3.0,
                                ),
                              )
                            ],
                            color: ConstantColors.whiteColor,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsets.only(left: 30.0),
                                          child: Text('Log in')),
                                      Container(
                                        width: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    LoginPage()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account? ",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: ConstantColors.whiteColor,
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
                                        color: ConstantColors
                                            .loginpageSignUpButton,
                                      )),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        CupertinoPageRoute(
                                            builder: (BuildContext context) =>
                                                SignUpPage()));
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//'
  buildFacebookGoogleButton(VoidCallback ontap, image, text, color) {
    return Container(
      height: 45.0,
      width: double.infinity,
      margin: EdgeInsets.only(left: 40.0, right: 40.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(image),
              Container(
                width: 15.0,
              ),
              Text(
                text,
                style: TextStyle(
                  color: ConstantColors.whiteColor,
                ),
              )
            ],
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
