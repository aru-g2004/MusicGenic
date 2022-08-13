import 'package:flutter/material.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';

class choose extends StatefulWidget {
  const choose({Key? key}) : super(key: key);

  @override
  _chooseState createState() => _chooseState();
}

class _chooseState extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('ff006e') ,

child: Column(

  children: [
    SizedBox(height: 100,),

    Center(child: Writing('How do you want to produce\n your music?', 20, '000000')),
    SizedBox(height: 100,),

 RRButton(context, 'Keywords Music Generator', 'c11cad', 100, 300, '/keywords'),

    SizedBox(height: 50,),

    RRButton(context, 'Explore Music Generator', '5f5ff6', 100, 300, '/ex1'),

  ],

),


    );
  }
}
