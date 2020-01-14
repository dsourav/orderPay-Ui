import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'paymentPages/paySuccessfull.dart';
class LoaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: InkWell(
          child: Image.asset('assets/images/loader.png',fit: BoxFit.fill,),
          onTap: (){
               Navigator.of(context).push(CupertinoPageRoute(
                              builder: (BuildContext context)=>PaySucessPage()
                            ));
          },
          )
        
      ),
    );
  }
}