import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurent_frontend/const.dart';

import 'foodInfo.dart';

class QrCOdeResultRestaurent extends StatefulWidget {
  @override
  _QrCOdeResultRestaurentState createState() => _QrCOdeResultRestaurentState();
}

class _QrCOdeResultRestaurentState extends State<QrCOdeResultRestaurent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  //  pinned: true,
                  iconTheme: IconThemeData(color: ConstantColors.greyColor),
                  backgroundColor: ConstantColors.whiteColor,
                  expandedHeight: MediaQuery.of(context).size.height / 3,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/restaurent.jpeg',
                              ),
                              fit: BoxFit.cover)),
                      child: Container(
                        color: ConstantColors.backgroundBlack.withOpacity(0.4),
                        child: Center(
                          child: Text(
                            'Welcome to\nTurkish Restaurants',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ConstantColors.whiteColor,
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelStyle:
                          TextStyle(color: ConstantColors.backgroundBlack),
                      labelColor: ConstantColors.backgroundBlack,
                      indicator: BoxDecoration(),
                      tabs: [
                        Tab(text: "Full menu"),
                        Tab(text: "Popular items"),
                        Tab(text: "Filters"),
                      ],
                    ),
                  )),
            ];
          },
          body: Column(
            children: <Widget>[
              Expanded(
                          child: TabBarView(
                  children: <Widget>[
                    _buildHomeCardWidget(),
                    Container(),
                    Container()
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ConstantColors.greyShadow,
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.0,
                                3.0,
                              ),
                    )
                  ]
                ),
                width: double.infinity,
                height: 45.0,
              
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.add_shopping_cart,color: ConstantColors.greyColor,),
                    onPressed: (){

                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildHomeCardWidget() {
    return Container(
      child: ListView(
        children: <Widget>[
          buildCardItem('assets/images/chicken_noodles.png','Rahat Brasserie-Berkarar Mall' ,  '299 Levent/Besiktas', "\$21.14"),
          buildCardItem('assets/images/recipelab.png','Seasonal soup-Restaurant' ,  '299 Levent/Besiktas', "\$11.05"),
           buildCardItem('assets/images/tofu.png','Cautro Formaggie-Soup' ,  '299 Levent/Besiktas', "\$17.94"),

        ],
      )
    );
  }
//      
  buildCardItem(image,title,subtitle,price){
  return  Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                              child: Card(
                  elevation: 8.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(image
                            ,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, right: 8.0),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    title
                                   ,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 15.0,
                                        color: ConstantColors.greyColor,
                                      ),
                                      Expanded(
                                        child: Text(
                                          subtitle
                                         ,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: ConstantColors.greyColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(Icons.star,size: 10.0,color: ConstantColors.amberColor,),
                                    Text('4.9',style: TextStyle(
                                            fontSize: 13.0,
                                            color: ConstantColors.backgroundBlack,
                                          )),
                                    Expanded(
                                      child: Text(
                                          '(120 ratings)',
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 11.0,
                                            color: ConstantColors.greyColor,
                                          ),
                                        ) ,
                                    ),
                                    Text(price,
                                     style: TextStyle(
                                            fontSize: 17.0,
                                            color: ConstantColors.backgroundBlack,
                                          ),
                                    )

                                  ],
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                      Navigator.of(context).push(CupertinoPageRoute(
                            builder: (BuildContext context)=>FoodInfoPage()
                          ));
                },
              ),
            );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
