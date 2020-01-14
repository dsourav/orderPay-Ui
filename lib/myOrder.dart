import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

import 'cooking.dart';

class MyOrderPage extends StatefulWidget {
  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}
//  Text(
//           "My Order",
//           style: TextStyle(
//               fontSize: 35.0,
//               fontWeight: FontWeight.bold,
//               color: ConstantColors.greyColor),
//  )
class _MyOrderPageState extends State<MyOrderPage> {
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
            "My Order",
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
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                    height: 20.0,
                  ),
                    buildOrederItem('assets/images/chicken_noodles.png',
                        'Cautro Formaggie-Soup', '\$15.50'),
                    buildOrederItem('assets/images/recipelab.png',
                        'Seasonal soup-Restaurant', "\$11.05"),
                    buildOrederItem('assets/images/tofu.png',
                        'Cautro Formaggie-Soup', "\$17.94"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: buildButton(ConstantColors.welcomeText,
                          'Add more food', ConstantColors.inputTextBackground,addMoreFoodButtonPressed)),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                      child: buildButton(ConstantColors.whiteColor,
                          'Send to cook', ConstantColors.welcomeText,sendToCookButtonPresses)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  addMoreFoodButtonPressed(){
    Navigator.of(context).pop();
  }

  sendToCookButtonPresses(){
     Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>CookingPage()
                          ));
  }

  buildButton(textColor, text, backGroundcolor,VoidCallback callBack) {
    return SizedBox(
      height: 50.0,
          child: RaisedButton(
        color: backGroundcolor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ConstantColors.greyColor),
            borderRadius: BorderRadius.circular(7.0)),
        textColor: textColor,
        child: Text(text),
        onPressed: callBack,
      ),
    );
  }

  buildOrederItem(image, title, price) {
    return Card(
      elevation: 8.0,
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: 8.0, right: 8.0, bottom: 15.0, top: 15.0),
              width: 90.0,
              height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 17.0,
                color: ConstantColors.backgroundBlack,
              ),
            ),
            Icon(
              Icons.arrow_right,
              size: 20.0,
              color: ConstantColors.greyColor,
            )
          ],
        ),
      ),
    );
  }
}
