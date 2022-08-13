import 'package:flutter/material.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';

class keywords extends StatefulWidget {
  const keywords({Key? key}) : super(key: key);

  @override
  _keywordsState createState() => _keywordsState();
}

class _keywordsState extends State<keywords> {

  final myController = TextEditingController();

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }


  String text = "";

  List<Widget> keywords = [];

  @override
  Widget build(BuildContext context) {
    return Container(

      color: HexColor.fromHex('3a86ff') ,

      child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(height: 100,),
        Center(child: Writing('Add Keywords below (ex: Piano)', 20, '000000')),
        SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.all(5.0),
           child: Card(child: Padding(
             padding: const EdgeInsets.fromLTRB( 50, 0, 50, 0),
             child: TextField(controller: myController,
             decoration: InputDecoration(
               suffix: FlatButton(
                 onPressed: (){
                   setState(() {
                     keywords.add(keyword(myController.text));
                   });
                 },
                   child: Icon(Icons.add, color: Colors.black,)
               )
             ),),
           )),
         ),
         SizedBox(height: 20,),
        Column(
          children: keywords,
        ),

        RRButton(context, 'Generate My Music', 'ffbe0b', 100, 300, '/musicGen'),

      ],


      ),


    );
  }
}

// Making a keyword (card with keyword in it)

Widget keyword(String text)
{
  return SizedBox(
    height: 80,
    width: 150,
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)),
      color: Colors.white,
      child: Center(child: Writing(text, 15, '000000')),

    ),
  );
  
}