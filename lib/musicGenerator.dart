import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'HexColor.dart';
import 'package:musicgenic/main.dart';


class musicGenerator extends StatefulWidget {
  const musicGenerator({Key? key}) : super(key: key);

  @override
  _musicGeneratorState createState() => _musicGeneratorState();
}

class _musicGeneratorState extends State<musicGenerator> {
  bool isPlaying = false;
  final audioPlayer = AudioPlayer();
  final url = "https://cdn.kapwing.com/final_62f7f3c07d569d007d1f00de_19654.mp4";
final urlTwo = "https://cdn.kapwing.com/final_62f7f890515c590091cec09f_136042.mp4";

  @override


  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('5f5ff6'),
    child:  ListView(
        children: [
        SizedBox(height: 100,),
      Center(child: Writing('Your Sounds', 20, '000000')),

          SizedBox(height: 30),
          Center(child: Writing('Sound 1', 15, '000000')),
                Music(250, 250),
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () async {
                      if(audioPlayer.playing)
                      {
                        audioPlayer.pause();
                      }
                      else{
                        await audioPlayer.setUrl(urlTwo);
                        audioPlayer.play();
                      }

                    }, icon:  Icon(Icons.play_circle_filled, color: Colors.yellow, size: 50,),
                  ),
                ),
          SizedBox(height: 50,),
          Center(child: Writing('Sound 2', 15, '000000')),
          Music(250, 250),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () async {
                if(audioPlayer.playing)
                {
                  audioPlayer.pause();
                }
                else{
                  await audioPlayer.setUrl(url);
                  audioPlayer.play();
                }

              }, icon:  Icon(Icons.play_circle_filled, color: Colors.yellow, size: 50,),
            ),
          ),
          SizedBox(height: 50,),
          Center(child: Writing('Sound 3', 15, '000000')),
          Music(250, 250),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () async {
                if(audioPlayer.playing)
                {
                  audioPlayer.pause();
                }
                else{
                  await audioPlayer.setUrl(urlTwo);
                  audioPlayer.play();
                }

              }, icon:  Icon(Icons.play_circle_filled, color: Colors.yellow, size: 50,),
            ),
          ),


        ]
    )




    );
  }
}
