import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffeapp/screens/drink_info.dart';
import 'package:coffeapp/screens/drink_info3.dart';
import 'package:coffeapp/screens/menue_list.dart';
import 'package:coffeapp/screens/menue_list2.dart';
import 'package:coffeapp/screens/pages/pagetwo.dart';
import 'package:flutter/material.dart';

import 'drinl_info2.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  
  //Start Var Colors
  var c1 = Color.fromARGB(255, 138, 44, 44);
  var c2 = Color.fromARGB(255, 199, 144, 41);
  var c3 = Color.fromARGB(255, 24, 99, 109);
  var cn1 = Color.fromARGB(255, 179, 146, 146);
  var cn2 = Color.fromARGB(255, 247, 215, 156);
  var cn3 = Color.fromARGB(255, 5, 232, 248);
  var navcolor = Color.fromARGB(255, 138, 44, 44);
  var n2 = Color.fromARGB(255, 197, 162, 162);
  bool fladBoutColor = true;
  var bouColor = Color.fromARGB(255, 138, 44, 44);
  var bouColor2 = Color.fromARGB(255, 233, 219, 98);
  var textbouColor = Colors.black;
  var circleColor = Colors.white;
  bool isCircle1 = true;
   bool isCircle2 = true;
    bool isCircle3 = true;
  //End Colors
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //start NavBar
        drawer: Drawer(
        child:Column(
          children: [
            UserAccountsDrawerHeader(
               accountName: Container(child: Text("Ali Sharaf")),accountEmail: Text("ali@gmail.com"),
       
              currentAccountPicture: CircleAvatar(backgroundImage:AssetImage("images/ali.jpeg") ),
              ),
          ],
        ),
        ),
        appBar: AppBar(
            backgroundColor: navcolor,
            elevation: 0,
            leading: Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Builder(
               builder: (BuildContext context) {
                  return IconButton(
                      icon: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 44, // Changing Drawer Icon Size
           ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
            ),
            actions: [
              Row(children: [
                CircleAvatar(backgroundColor:isCircle1?Colors.grey: circleColor,radius: 5,),
                 SizedBox(
                width: 5.0,
              ),
                CircleAvatar(backgroundColor:isCircle2?Colors.grey: circleColor,radius: 5,),
                 SizedBox(
                width: 5.0,
              ),
                CircleAvatar(backgroundColor: isCircle3?Colors.grey: circleColor,radius: 5,),
              ],),
               SizedBox(
                width: 60.0,
              ),
              IconButton(
                icon:Icon( Icons.search_rounded,
                size: 40.0,) ,
                onPressed: (() {
                  showSearch(context: context, 
                  delegate: DataSearch(),);
                }),
               
              ),
              SizedBox(
                width: 20.0,
              ),
              Icon(
                Icons.shopping_bag_rounded,
                size: 40.0,
              ),
              SizedBox(
                width: 30.0,
              ),
            ]),
        //End NavBar
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //Start curvColor
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [navcolor, n2],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      color: navcolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(290),
                        bottomRight: Radius.circular(290),
                      ),
                    ),
                    height: 160.0,
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                  //End curvColor
                  //Start Slider images
                  Container(
                    padding: EdgeInsets.only(top: 40.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.5,
                        // autoPlay: true,
                        onPageChanged: (value, r) {
                          setState(() {
                            if (value == 0) {
                              navcolor = c1;
                              n2 = cn1;
                              isCircle1 = true;
                              isCircle2=false;
                              isCircle3=false;

                              
                            } else if (value == 1) {
                              navcolor = c2;
                              n2 = cn2;
                              isCircle1 = false;
                              isCircle2=true;
                                isCircle3=false;

                            } else if (value == 2) {
                              navcolor = c3;
                              n2 = cn3;
                              isCircle1 =false;
                              isCircle2=false;
                              isCircle3=true;


                              
                            }
                          });
                        },
                      ),
                      items: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                              return DrinkInfo();
                            })));
                          },
                          child: Container(
                              height: 600,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    'images/3.png',
                                    width: 140.0,
                                    height: 140.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Center(
                                      child: Text("Bali Caramel Latte",
                                          style: TextStyle(
                                            color: c1,
                                          ))),
                                  Center(child: Text("\$6.25")),
                                ],
                              )),
                        ),
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                              return DrinkInfo3();
                            })));
                          },
                          child: Container(
                              height: 600,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    'images/2.png',
                                    width: 140.0,
                                    height: 140.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Center(
                                      child: Text("fali Caramel Latte",
                                          style: TextStyle(
                                            color: c2,
                                          ))),
                                  Center(child: Text("\$6.25")),
                                ],
                              )),
                        ),
                        MaterialButton(
                          onPressed: (() {
                             Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                              return DrinkInfo2();
                            })));
                          }),
                          child: Container(
                              height: 600,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    'images/1.png',
                                    width: 140.0,
                                    height: 140.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Center(
                                      child: Text("Atjeh Green Coffee",
                                          style: TextStyle(
                                            color: c3,
                                          ))),
                                  Center(child: Text("\$6.25")),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //End Slider
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 120.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                              colors: (fladBoutColor == true)
                                  ? [c1, Color.fromARGB(255, 233, 219, 98)]
                                  : [Colors.white, Colors.white],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(0.9, 0.6),
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20.0),
                            splashColor: c1,
                            onTap: () {
                              setState(() {
                                fladBoutColor = true;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "Drinks",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: (fladBoutColor == false)
                                        ? textbouColor
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 120.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                              colors: (fladBoutColor == true)
                                  ? [
                                      Colors.white,
                                      Colors.white,
                                    ]
                                  : [c1, Color.fromARGB(255, 233, 219, 98)],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(0.9, 0.20),
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20.0),
                            splashColor: c1,
                            onTap: () {
                              setState(() {
                                fladBoutColor = false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "Donuts",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: (fladBoutColor == true)
                                        ? textbouColor
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  (
                   fladBoutColor==true)?MenueListDrinks():MenueListFood(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}


////////////
class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
   // Action for AppBar
    return[
    IconButton(onPressed:(){
    }, icon: Icon(Icons.clear),) // IconButton
];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   
    //implement buildLeading
    return IconButton(onPressed: (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) {
                              return  HomeScreen();})
        )
      );
    }, icon: Icon(Icons.arrow_back),);
  }

  @override
  Widget buildResults(BuildContext context) {
    // implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // implement buildSuggestions
    return Text('TextBody Search');
  }
}
