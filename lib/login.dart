import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';




class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('a22acd') ,
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20,),
          logoWOname(175, 175),
          Writing('Sign In to Start Making Music!', 20, '000000'),
          SizedBox(height: 20,),
          SizedBox(
            height: 300,
            width: 250,
            child: Card(
              color: HexColor.fromHex('ff006e'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(

                children: [

                SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: HexColor.fromHex('000000'),
                          fontSize: 15
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      style:
                      GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: HexColor.fromHex('000000'),
                          fontSize: 15
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color:HexColor.fromHex('ffbe0b') ,
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/choose');

                        },
                        child: Writing('login', 20, '000000')

                      ),
                    ),
                  )
                ],
              ),


            ),
          )

        ],

      ),
    );
  }
}
