import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("XYLOPHONE")),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.red,
                    child: TextButton(
                      onPressed: (){
                        final player = AudioCache();
                        player.play('note1.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),

                  Container(
                    height: 100.0,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note2.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),

                  Container(
                    height: 100.0,
                    color: Colors.green,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note3.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),


                  Container(
                    height: 100.0,
                    color: Colors.yellow,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note4.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),

                  Container(
                    height: 100.0,
                    color: Colors.pink,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note5.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),

                  Container(
                    height: 100.0,
                    color: Colors.purple,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note6.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),

                  Container(
                    height: 100.0,
                    color: Colors.deepOrange,
                    child: TextButton(
                      onPressed: (){

                        final player = AudioCache();
                        player.play('note7.wav');
                      },
                      child: Text(
                          ""
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
