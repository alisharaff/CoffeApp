// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coffeapp/screens/home_screen.dart';
import 'package:coffeapp/screens/pages/pageone.dart';
import 'package:coffeapp/screens/pages/pagethree.dart';
import 'package:coffeapp/screens/pages/pagetwo.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrinkInfo3 extends StatefulWidget {
  const DrinkInfo3({Key? key}) : super(key: key);

  @override
  State<DrinkInfo3> createState() => _DrinkInfo3State();
}

class _DrinkInfo3State extends State<DrinkInfo3> {
  var c1 = Color.fromARGB(195, 219, 96, 96);
  var changColor = Color.fromARGB(255, 199, 144, 41);
  var c2 = Color.fromARGB(255, 199, 144, 41);
  var c3 = Color.fromARGB(255, 80, 143, 151);
  var incColor = Colors.grey;
  bool incChang =true;
  var numCup = 1;
  double  priceCup = 6.25;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: changColor,
        body: PageView(
            onPageChanged: ((value) {
              setState(() {
               if(value==0){
                changColor=c3;
              }else if(value==1){
                changColor=c3;
              }else if(value==2){
                changColor=c1;
              }   
              });
             
            }),
          children: [
            /////////////////////
          PageThree(),
          PageTwo(),
          PageOne(),
          
            /////////////////////
        ],)
      ),
    );
  }
}



