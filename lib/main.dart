import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout demo",
      home: buildingHomePage(),
    );
  }

  Widget buildingHomePage(){
   final  titleText = Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Strawberry PavLova',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontSize: 30
          ),
        ),
    );

   final subTitle = Text(
        'UGYHuhdaiuis fewuriewiore rweroeiwore',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Georgia',
      fontSize: 25),
    );

   final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

   final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 reviews',
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );

   final  descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5
    );

   final iconList = DefaultTextStyle(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.blue[500],),
                  Text('PREP'),
                  Text('25 min')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.blue[500],),
                  Text('COOK'),
                  Text('1 hr')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.ac_unit_sharp, color: Colors.blue[500],),
                  Text('FEEDS'),
                  Text('4.6')
                ],
              )
            ],
          ),
        ));

   final leftColumn = Container(
     padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
     child: Column(
       children: [
         titleText,
         subTitle,
         ratings,
         iconList
       ],
     ),
   );

   final mainImage = Image.asset('assets/cake.jpg', fit: BoxFit.cover,);

   return Scaffold(
     appBar: AppBar(
       title: Text('Title Text'),
     ),
     body: Center(
       child: Container(
         margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
         height: 600,
         child: Card(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 width: 400,
                 child: leftColumn,
               ),
               mainImage,
             ],
           ),
         ),
       ),
     ),
   );
  }
}




