import 'package:flutter/material.dart';

class MenueListDrinks extends StatefulWidget {
  MenueListDrinks({Key? key}) : super(key: key);

  @override
  State<MenueListDrinks> createState() => _MenueListDrinksState();
}

class _MenueListDrinksState extends State<MenueListDrinks> {
  @override
  Widget build(BuildContext context) {
    
     //Start list menue
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/1.png',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Atjeh Green Coffee'),
                  Text(
                    '\$5.75',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        ///////////////////////////////////
        ////////////////////
        SizedBox(height: 10.0,),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/3.png',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Atjeh Green Coffee'),
                  Text(
                    '\$5.75',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        ////////////////////
        SizedBox(height: 10.0,),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/2.png',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Atjeh Green Coffee'),
                  Text(
                    '\$5.75',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        ////////////////////
        SizedBox(height: 10.0,),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/1.png',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Atjeh Green Coffee'),
                  Text(
                    '\$5.75',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        ////////////////////
        SizedBox(height: 10.0,),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/1.png',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Atjeh Green Coffee'),
                  Text(
                    '\$5.75',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ) ;
  }
}
