
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicgenic/HexColor.dart';
import 'package:musicgenic/main.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushNamed(context, '/login');
    });

    List<String> list = [
      "Ready to make music?", "Welcome to MusicGenic!",
      "You are a music genius :)", "Create the next best song!"
    ];

    return Container(

      color: HexColor.fromHex('ffbe0b'),

        child: (
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  logo(250, 250),


                  SizedBox(
                    height: 15,
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor:HexColor.fromHex('3a86ff'),
                      valueColor: AlwaysStoppedAnimation<Color>(HexColor.fromHex('ff006e'),),

                    ),
                  ),
                   Opacity( //Wrap any widget with Opacity()
                        opacity: 1, //from 0-1, 0.5 = 50% opacity
                        child: CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2)
                          ),
                          items: list
                              .map((item) => Container(
                            child: Center(child: Writing(item, 15, '3a86ff' )),

                          ))
                              .toList(),
                        )),
                ],
              ),
            ))

        );
  }

}

