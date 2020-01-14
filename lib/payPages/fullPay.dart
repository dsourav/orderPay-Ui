import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

class FullPay extends StatefulWidget {
  @override
  _FullPayState createState() => _FullPayState();
}

class _FullPayState extends State<FullPay> {
    int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Container(
            child: Expanded(
              child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: <Widget>[
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
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('How much would you like to tip?',
                  style: TextStyle(fontSize: 18.0,color: ConstantColors.greyColor),),
                ),

                 Slider(
                      value: _value.toDouble(),
                      min: 1.0,
                      max: 10.0,

                      activeColor: ConstantColors.loginpageSignUpButton,
                      inactiveColor: ConstantColors.greyShadow,
                      label: '$_value',
                      divisions: 10,
                      onChanged: (double newValue) {
                        setState(() {
                          _value = newValue.round();
                        });
                      },
                      semanticFormatterCallback: (double newValue) {
                        return '${newValue.round()} dollars';
                      }
                  ),
                  SizedBox(height: 20.0,),
                paymentButton()
              ],
            ) ,
          )
          
        ],
      ) ,
      
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
    paymentButton() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: ConstantColors.welcomeText),
        child: InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Payment proceed',
                    style: TextStyle(
                        fontSize: 18.0, color: ConstantColors.whiteColor)),
                Text('\$60.5',
                    style: TextStyle(
                        color: ConstantColors.whiteColor, fontSize: 20.0))
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}