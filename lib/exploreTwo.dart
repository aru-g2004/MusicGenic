import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';



class exploreTwo extends StatefulWidget {
  const exploreTwo({Key? key}) : super(key: key);

  @override
  _exploreTwoState createState() => _exploreTwoState();
}

class _exploreTwoState extends State<exploreTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: HexColor.fromHex('8338ec'),

      child:
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),

            Writing('Pick instruments', 20, '000000'),
            SizedBox(height: 50,),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RRButton(context, 'Piano', 'fd8a09', 125, 150, '/exSelection'),
                  RRButton(context, 'Guitar', '3a86ff', 125, 150, '/exSelection'),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RRButton(context, 'Trumpets', 'ff006e', 125, 150,'/exSelection'),
                  RRButton(context, 'Drums', 'fd8a09', 125, 150,'/exSelection'),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RRButton(context, 'Flute', '3a86ff',125, 150, '/exSelection'),
                  RRButton(context, 'Saxophone', 'ff006e', 125, 150, '/exSelection'),
                ],
              ),
            ),

          ]


      ),

    );
  }
}
