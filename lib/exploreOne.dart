import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';



class exploreOne extends StatefulWidget {
  const exploreOne({Key? key}) : super(key: key);

  @override
  _exploreOneState createState() => _exploreOneState();
}

class _exploreOneState extends State<exploreOne> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: HexColor.fromHex('ffbe0b'),

      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(height: 100,),

        Writing('Pick a genre for your song?', 20, '000000'),
          SizedBox(height: 20,),

         Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RRButton(context, 'Pop', 'fd8a09', 125, 150, '/ex2'),
                    RRButton(context, 'R&B', '3a86ff', 125, 150, '/ex2'),
                  ],
                ),
         ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RRButton(context, 'Hip-Hop', 'ff006e', 125, 150, '/ex2'),
                RRButton(context, 'Classical', 'fd8a09', 125, 150, '/ex2'),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RRButton(context, 'Country', '3a86ff',125, 150, '/ex2'),
                RRButton(context, 'Jazz', 'ff006e', 125, 150, '/ex2'),
              ],
            ),
          ),

        ]


      ),

    );
  }
}
