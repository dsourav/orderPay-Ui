import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter/material.dart';

import 'const.dart';
  
Widget drawerWidget({@required BuildContext context,
@required Widget bodyWidget,@required GlobalKey<InnerDrawerState> innerDrawerKey }){
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
          key: innerDrawerKey,
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
                           
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(60.0),
                                    child: Image.asset('assets/images/tatiana.jpg'),
                                  ),
                                  
                                ),
                                 Container(
                              margin: EdgeInsets.only(left: 20,),
                              child: Text('Tatiana',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontSize: 15)),
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
                        ListTile(
                          title: Text(
                            "Prom-codes",
                            style: TextStyle(
                                fontSize: 14,
                                color: ConstantColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.confirmation_number,
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
                                    style: TextStyle(
                                        color: ConstantColors.whiteColor),
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
                                    style: TextStyle(
                                        color: ConstantColors.whiteColor),
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
          scaffold:bodyWidget
                
          );

} 