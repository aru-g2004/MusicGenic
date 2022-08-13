import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';


class exploreSelections extends StatefulWidget {
  const exploreSelections({Key? key}) : super(key: key);

  @override
  _exploreSelectionsState createState() => _exploreSelectionsState();
}

class _exploreSelectionsState extends State<exploreSelections> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('fb5607'),
      child:
      Column(
        children: [
          SizedBox(height: 100,),
          Center(child: Writing('Your Selections', 20, '000000')),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
            color: HexColor.fromHex('ffbe0b'),
              child: Column(
                children: [
                RRButton(context, 'Pop', 'FFFFFF', 100, 300, '/keywords'),
                SizedBox(height: 20,),
                RRButton(context, 'Guitar', 'FFFFFF', 100, 300, '/keywords'),
              ]),
            ),
          ),
          SizedBox(height: 20,),
          RRButton(context, 'Generate My Music!', 'FFFFFF', 100, 300, '/musicGen'),
        ],
      ),
    );
  }
}
