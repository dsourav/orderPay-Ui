import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

class FoodInfoPage extends StatefulWidget {
  @override
  _FoodInfoPageState createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                //  pinned: true,
                iconTheme: IconThemeData(color: ConstantColors.greyColor),
                backgroundColor: ConstantColors.whiteColor,
                expandedHeight: MediaQuery.of(context).size.height / 2,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    //  alignment: Alignment.centerLeft,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/tofu.png',
                                ),
                                fit: BoxFit.cover)),
                        child: Container(
                          color:
                              ConstantColors.backgroundBlack.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                                height: MediaQuery.of(context).size.height / 6),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Cautro Formaggie\nSoup',
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ConstantColors.whiteColor,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                  ),
                                  Container()
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: 15.0,
                                  color: ConstantColors.whiteColor,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    '299 Levent/Besiktas',
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: ConstantColors.whiteColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              color: ConstantColors.whiteColor.withOpacity(0.7),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _buildRAtingPhoto(),
                                  buildDIvider(),
                                  _buildRAtingPhoto(),
                                  buildDIvider(),
                                  _buildRAtingPhoto()
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ];
        },
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: ConstantColors.loginpageSignUpButton,
                child: ListTile(
                  title: Text(
                    'This meal contains ingeredients you are alergic to',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: ConstantColors.backgroundBlack,
                    ),
                  ),
                  subtitle: Text(
                    'Tomato',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: ConstantColors.backgroundBlack.withOpacity(0.5)),
                  ),
                  trailing: Icon(Icons.warning,
                      color: ConstantColors.backgroundBlack),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: FlatButton(
                  child: Text(
                    'loremu lipsum dolor ser anythinh you want is here . you will love the product if you purchase it',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: ConstantColors.backgroundBlack,
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: ConstantColors.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                        context: context,
                        builder: (context) => Container(
                              height: MediaQuery.of(context).size.height / 2,
                              child: ListView(
                                children: <Widget>[
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Cautro Formaggie-Soup',
                                            style: TextStyle(fontSize: 17.0),
                                          ),
                                        ),
                                        InkWell(
                                          child: Text(
                                            'x',
                                            style: TextStyle(fontSize: 17.0),
                                          ),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: Image.asset(
                                              'assets/images/recipelab.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: Image.asset(
                                              'assets/images/recipelab.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: SizedBox(
                                              child:   Container(
                                                      //   height:  MediaQuery.of(context).size.height / 4 ,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                'assets/images/recipelab.png',
                                                              ))),
                                                      child: Container(
                                                        // height: MediaQuery.of(context).size.height / 4  ,

                                                        color: ConstantColors
                                                            .backgroundBlack
                                                            .withOpacity(0.4),
                                                        child: Center(
                                                          child: Text(
                                                            '+3',
                                                            style: TextStyle(
                                                                fontSize: 17.0,
                                                                color: ConstantColors
                                                                    .whiteColor),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                              
                                              // Stack(
                                              //     alignment: Alignment.center,
                                              //     children: <Widget>[
                                                  
                                              //       //   Text('+3', style: TextStyle(fontSize: 17.0,color: ConstantColors.whiteColor),)
                                              //     ]),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '454g/ pieces',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: ConstantColors.greyColor,
                        ),
                      ),
                    ),
                    Text(
                      '\$17.94',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: ConstantColors.backgroundBlack,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              buildButton('Make changes', makeChangesButtonTap),
              SizedBox(
                height: 20.0,
              ),
              buildButton('Send to order', sendToorderButtonTap),
            ],
          ),
        )),
      ),
    );
  }

  makeChangesButtonTap() {}
  sendToorderButtonTap() {}
  buildButton(title, VoidCallback callback) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: SizedBox(
        width: double.infinity,
        height: 44.0,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: ConstantColors.loginButtonBakground,
          textColor: ConstantColors.whiteColor,
          child: Text(title),
          onPressed: callback,
        ),
      ),
    );
  }

  _buildRAtingPhoto() {
    return Expanded(
      child: Container(
        child: Wrap(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 10.0,
                  color: ConstantColors.whiteColor,
                ),
                Text('4.9',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: ConstantColors.whiteColor,
                    )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('210 ratings',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: ConstantColors.whiteColor,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildDIvider() {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Container(
        height: 30.0,
        width: 1.0,
        color: ConstantColors.whiteColor.withOpacity(0.7),
      ),
    );
  }
}

// Container(
//                   height: MediaQuery.of(context).size.height/2,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/tofu.png'),
//                       fit: BoxFit.cover
//                     )
//                   ),
//                   child: Container(
//                     color: ConstantColors.backgroundBlack.withOpacity(0.5),
//                   ),
//                 )
