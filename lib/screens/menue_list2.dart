import 'package:flutter/material.dart';

class MenueListFood extends StatefulWidget {
  MenueListFood({Key? key}) : super(key: key);

  @override
  State<MenueListFood> createState() => _MenueListFoodState();
}

class _MenueListFoodState extends State<MenueListFood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/f1.jpg',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pink in Disguise'),
                  Text(
                    '\$3.33',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/f2.jpg',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('chocolate donuts'),
                  Text(
                    '\$3.55',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
         SizedBox(
          height: 10.0,
        ),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/f1.jpg',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pink in Disguise'),
                  Text(
                    '\$3.33',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
         Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                'images/f2.jpg',
                width: 100.0,
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('chocolate donuts'),
                  Text(
                    '\$3.33',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
