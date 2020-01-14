import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

import 'QrscanResultRestaurent.dart';

class FoodInfoPage extends StatefulWidget {
  @override
  _FoodInfoPageState createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  int _currentRadioIndex1 = 1;
   int _currentRadioIndex2 = 1;

  List<RadioModel> _groupRadioAdditional = [
    RadioModel(
      text: "All",
      index: 1,
    ),
    RadioModel(
      text: "Herbes",
      index: 2,
    ),
    RadioModel(
      text: "Cheese",
      index: 3,
    ),
  ];
   List<RadioModel> _groupRadioSauce = [
    RadioModel(
      text: "Without Sauce",
      index: 1,
    ),
    RadioModel(
      text: "Mint Sauce",
      index: 2,
    ),
    RadioModel(
      text: "Peanut Sauce",
      index: 3,
    ),
    RadioModel(
      text: "Sweet & Sour Sauce",
      index: 3,
    ),
  ];
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
                        builder: (context) =>
                            buildLikeDislikeWithInfoModalSheet());
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

  buildLikeDislikeButton(buttonTExt, icon, color) {
    return Expanded(
      child: RaisedButton.icon(
          color: ConstantColors.inputTextBackground,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: ConstantColors.greyColor),
              borderRadius: BorderRadius.circular(7.0)),
          //  elevation: 8.0,
          textColor: color,
          icon: Text(buttonTExt),
          onPressed: () {},
          label: Image.asset(
            icon,
            height: 15.0,
            width: 15.0,
            fit: BoxFit.fill,
          )),
    );
  }

  buildLikeDislikeWithInfoModalSheet() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 110.0,
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
                      height: 110.0,
                      child: Container(
                        //   height:  MediaQuery.of(context).size.height / 4 ,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/recipelab.png',
                                ))),
                        child: Container(
                          // height: MediaQuery.of(context).size.height / 4  ,

                          color:
                              ConstantColors.backgroundBlack.withOpacity(0.4),
                          child: Center(
                            child: Text(
                              '+3',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: ConstantColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'loremu lipsum dolor ser anythinh you want is here . you will love the product if you purchase it',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17.0,
                  color: ConstantColors.backgroundBlack,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              children: <Widget>[
                buildLikeDislikeButton('I Like it', 'assets/images/like.png',
                    ConstantColors.blueColor),
                SizedBox(width: 25.0),
                buildLikeDislikeButton(
                    'I Dislike it',
                    'assets/images/dislike.png',
                    ConstantColors.loginpageSignUpButton)
              ],
            ),
          )
        ],
      ),
    );
  }

  makeChangesButtonTap() {
    showModalBottomSheet(
        backgroundColor: ConstantColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        )),
        context: context,
        builder: (context) => StatefulBuilder(
              builder: (BuildContext context, StateSetter setModalstate) =>
                  makeChangesModalSheet(setModalstate),
            ));
  }

  sendToorderButtonTap() {
       Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>QrCOdeResultRestaurent()
                          ));
  }
  makeChangesModalSheet(StateSetter setModalstate) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Additionally',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 17.0,
                color: ConstantColors.backgroundBlack,
                fontWeight: FontWeight.normal),
          ),
         
          //  radioBoxDivider(),
          radioBoxWidget(setModalstate,_groupRadioAdditional,1),
          SizedBox(
            height: 15.0,
          ),
           Text(
            'Sauce',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 17.0,
                color: ConstantColors.backgroundBlack,
                fontWeight: FontWeight.normal),
          ),
           radioBoxWidget(setModalstate,_groupRadioSauce,2),

          // radioBoxWidget('Herbes',false),
        ],
      ),
    );
  }

  radioBoxDivider() {
    return Container(
      height: 1.0,
      width: double.infinity,
      color: ConstantColors.greyColor.withOpacity(0.5),
    );
  }

  radioBoxWidget(StateSetter setModalstate,List<RadioModel> list,int index) {
    return ListView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      //  padding: EdgeInsets.all(8.0),
      children: list
          .map((item) => Column(
                children: <Widget>[
                
                  RadioListTile(
                    groupValue: index==1?_currentRadioIndex1:_currentRadioIndex2,
                    activeColor: ConstantColors.backgroundBlack,
                    title: Text("${item.text}"),
                    value: item.index,
                    onChanged: (val) {
                      
                      setModalstate(() {
                        if(index==1)_currentRadioIndex1=val;
                         if(index==2)_currentRadioIndex2=val;
                      });
                    },
                  ),
                  radioBoxDivider(),
                ],
              ))
          .toList(),
    );
  
  }

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

class RadioModel {
  int index;
  String text;
  RadioModel({this.index, this.text});
}
