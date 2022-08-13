import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicgenic/exploreOne.dart';
import 'package:musicgenic/exploreSelections.dart';
import 'package:musicgenic/musicGenerator.dart';
import 'HexColor.dart';
import 'choose.dart';
import 'exploreTwo.dart';
import 'keywords.dart';
import 'loading.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loading',
    routes: {

      '/loading': (context) => loading(),
      '/login' : (context) => login(),
      '/choose' : (context) => choose(),
      '/keywords' : (context) => keywords(),
    '/musicGen' : (context) => musicGenerator(),
      '/ex1':(context) => exploreOne(),
      '/ex2': (context) => exploreTwo(),
      '/exSelection' : (context) => exploreSelections(),


    },
  ));
}



//Reusable Code

//Logo with name

Image logo(double h, double w)
{
  return Image.asset('Images/musicgeniclogo.png' , height: h, width: w,);

}


//Logo w/o name

Image logoWOname(double h, double w)
{
  return Image.asset('Images/Logowoname.png' , height: h, width: w,);

}

//Music Gen pic


Image Music(double h, double w)
{
  return Image.asset('Images/Music.png' , height: h, width: w,);

}


// Text Style

Text Writing(String text, double Font, String color)
{

  return Text(
    text, style: GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      color: HexColor.fromHex(color),
      fontSize: Font
  )


  );

}

// Rounded Rectangular Buttons

Widget RRButton(BuildContext c, String text, String color, double h, double w, String nav)
{
  return SizedBox(
    height: h,
    width: w,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        color: HexColor.fromHex(color),
        child: FlatButton(
          onPressed: (){
            Navigator.pushNamed(c, nav);
          }, child: Writing(text, 15, '000000'),
        ),
      ),
    ),
  );

}
