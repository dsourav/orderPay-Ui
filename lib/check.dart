import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:restaurent_frontend/const.dart';
import 'package:restaurent_frontend/payPages/fullPay.dart';
import 'package:restaurent_frontend/payPages/splitPay.dart';

import 'drawer.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).userGestureInProgress)
          return false;
        else
          return true;
      },
      child: drawerWidget(
          context: context,
          innerDrawerKey: _innerDrawerKey,
          bodyWidget: Scaffold(
            backgroundColor: ConstantColors.whiteColor,
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 40.0),
                    child: Text(
                      'Check',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: ConstantColors.greyColor),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                      'How much would you like to pay?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: ConstantColors.greyColor),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: DefaultTabController(
                        length: 4,
                        child: Scaffold(
                          backgroundColor: ConstantColors.whiteColor,
                          appBar: PreferredSize(
                            preferredSize: Size.fromHeight(kToolbarHeight),
                            child: Container(
                              height: 40.0,
                              child: TabBar(
                                indicatorPadding: EdgeInsets.all(00.0),
                                isScrollable: true,
                                indicatorSize: TabBarIndicatorSize.label,
                                unselectedLabelColor:
                                    ConstantColors.loginpageSignUpButton,
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: ConstantColors.welcomeText),
                                labelColor: ConstantColors.whiteColor,
                                tabs: <Widget>[
                                  Tab(
                                    child: Center(
                                        child: Text(
                                      "Fully pay",
                                    )),
                                  ),
                                  Tab(
                                    child: Center(child: Text("Split pay")),
                                  ),
                                  Tab(
                                    child: Center(child: Text("Input pay")),
                                  ),
                                  Tab(
                                    child: Center(child: Text("Selection")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          body: TabBarView(
                            children: <Widget>[
                              FullPay(),
                              SplitPay(),
                              FullPay(),
                              FullPay(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
