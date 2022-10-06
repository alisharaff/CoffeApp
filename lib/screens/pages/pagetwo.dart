
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
   var c1 = Color.fromARGB(195, 219, 96, 96);
  var c2 = Color.fromARGB(255, 199, 144, 41);
  var c3 = Color.fromARGB(255, 24, 99, 109);
  var incColor = Colors.grey;
  bool incChang =true;
  var numCup = 1;
  double  priceCup = 6.25;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
          SizedBox(
            height: 40.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            alignment: Alignment.bottomLeft,
            child: IconButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) {
                            return HomeScreen(); })));
            }, icon:Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 30.0,))),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'images/1.png',
              width: 240.0,
              height: 240.0,
            ),
          ),
          Center(
              child: Text("Atjeh Green Coffee",
                  style: TextStyle(color: Colors.white, fontSize: 27.0))),
          Center(
              child: Text("\$6.25",
                  style: TextStyle(color: Colors.black, fontSize: 20.0))),
        /// Start bottom details
        SizedBox(height: 20.0,),
        Wrap(children: [           Container(
             padding: EdgeInsets.only(left: 15.0),
            width: double.infinity,
            height: 100.0,
        decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 79, 85),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(40),
                   topRight: Radius.circular(40),
                 ),
               ),
            child: TextButton(
         child:
             Container(
               alignment: Alignment.centerLeft,
               child: const Text('About',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),)),
         onPressed: (){
           //Start AwesomeDialog
          AwesomeDialog(
                      context: context,
                      dialogType: DialogType.NO_HEADER,
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      width: 380,

                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      dismissOnTouchOutside: true,
                      dismissOnBackKeyPress: false,
                      onDissmissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Dismissed by $type'),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'About',
                      desc: "These replons typically offer moderate sunshine and rain,steady temperatures wound 20170 )and rich,porous FollIn return the delicate tree yields bes that are an mic manetsy for do ut countries and about 25 milion people and among natural commodities a manatery wus surpassed only by t of the two main coffres Arabica bogel celler",
                      descTextStyle: TextStyle(fontSize: 25),
                      showCloseIcon: true,
                      btnOkColor:c3,
                      btnCancelColor: c3,
                      btnCancelOnPress: () {
                         
                      },
                      btnOkOnPress: () {
                        setState(() {
                          numCup++;
                           priceCup+=6.25;
                        });
                      },
                    ).show();
                   //End AwesomeDialog
         }
            ),
          ),
          /// End bottom details
           
          Container(
         padding: EdgeInsets.only(left: 15.0),
         width: double.infinity,
         height: 100.0,
          decoration: BoxDecoration(
                  color: Color.fromARGB(255, 75, 62, 62),
                
               ),
         child: TextButton(
           child:
             Container(
               alignment: Alignment.centerLeft,
               child: Row(
                 children: [
                   const Text('Ingredients',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),),
                    SizedBox(width: 60.0,),
                    const Text('Customizable',style: TextStyle(color: Color.fromARGB(169, 158, 158, 158),fontSize: 18.0),),
                 
                 ],
               )),
           onPressed: () {}
         ),
          ),
          //// end 2
          Container(
         width: double.infinity,
         height: 175,
          decoration: BoxDecoration(
                  color: Colors.white,
               ),
         child: TextButton(
           child:
             Container(
               alignment: Alignment.centerRight,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,               
                 children: [
                  SizedBox(height: 15,),
                   Row(
                     children: [
                       Container(
                        padding: EdgeInsets.only(left: 15),
                        child: const Text('Order',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),)),
                       SizedBox(width: 150.0,),
                       //increase and decrease
                      IconButton(onPressed: (){
                        setState(() {
                          if(numCup>0){
                            numCup--;
                            priceCup-=6.25;
                            incChang =false;
                          }
                        });
                      }, color: incChang ?incColor:Colors.black, iconSize: 30.0,icon: Icon(Icons.remove_circle_outline_rounded)),
                       Text(" $numCup ",style: TextStyle(color: Colors.black,fontSize: 20),),
                       IconButton(onPressed: (){
                         setState(() {
                          numCup++;                         
                          priceCup+=6.25;
                          incChang =true;
                        });
                          
                       }, color:incChang ?Colors.black:incColor,iconSize: 30.0,icon: Icon(Icons.add_circle_outline_rounded)),
                    ],
                   ),
                    //
                  SizedBox(height: 15.0,),
                  DottedLine(dashColor: Color.fromARGB(255, 36, 34, 34),),
                       SizedBox(height: 15.0,),
                   Row(
                     children: [
                       Container(
                            width: 220.0,
                            height: 55.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: 
                                  [c1, Color.fromARGB(255, 233, 219, 98)],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(0.9, 0.6),
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20.0),
                              splashColor: c1,
                              onTap: () {
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Text(
                                  "Add to order",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                              ),
                            ),
                          ))),
                           SizedBox(width: 60.0,),
                   Text("${priceCup.toStringAsFixed(2)}",style: TextStyle(color: Color.fromARGB(255, 44, 43, 43),fontSize: 20.0),),
                     ],
                   ),
                  
                 ],
               )),
           onPressed: () {}
         ),
          ),],)
        ]);
  }
}