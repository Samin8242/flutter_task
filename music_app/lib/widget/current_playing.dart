import 'package:flutter/material.dart';
import 'package:music_app/screens/player_screen.dart';

import '../constants/app_color.dart';
import '../model/music_model.dart';

class CurrentPlaying extends StatefulWidget {
  const CurrentPlaying({super.key});
  @override
  State<CurrentPlaying> createState() {
    return _CurrentPlayingState();
  }
}

class _CurrentPlayingState extends State<CurrentPlaying> {
  final _currentItemPlaying = 0;
  double _currentPlayback = 0;

  String formatePlayerTime(double time) {
    final min = time ~/ 60;
    final sec = time % 60;
    return "$min:${sec.toStringAsFixed(0).padRight(2, "0")}";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 250, 251),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //text
                const Text(
                  "Current Playing",
                  style: TextStyle(
                    color: AppColor.secondaryTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //text
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "Clean water noice",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //slider
               SizedBox(height: 30,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              formatePlayerTime(_currentPlayback),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 0, 3, 8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 67,),
                            Text(
                              
                              formatePlayerTime(
                                  musicList[_currentItemPlaying].length),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 124, 139, 163),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                ),
                Slider(
                    value: _currentPlayback,
                    max: musicList[_currentItemPlaying].length,
                    thumbColor: const Color.fromARGB(255, 29, 31, 32),
                    activeColor: Colors.black,
                    inactiveColor: const Color.fromARGB(255, 161, 171, 201),
                    onChanged: (value) {
                      setState(() {
                        _currentPlayback = value;
                      });
                    }),
              ],
            ),

            
            Container(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient:const LinearGradient(colors: 
                        [
                          Color.fromARGB(255, 230, 219, 231),
                          Color.fromARGB(66, 243, 238, 245),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        )
                      ),
                      child: const Icon(
                        Icons.pause_rounded,
                        shadows: [Shadow(color: Color.fromARGB(255, 233, 223, 236))],
                        color: Color.fromARGB(255, 187, 131, 190),
                      
                        
                        size: 35,
                      ),
                    ),
                  ),

                 

                  //pause

                  Container(
                    //padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: 
                        [
                          Color.fromARGB(255, 198, 126, 202),
                          Color.fromARGB(66, 103, 45, 196),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        )
                      ),
                      child: IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.arrow_right_alt,color: Color.fromARGB(255, 252, 251, 252),),
                        onPressed: (){
                          
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>PlayerScreen()),);

                        },
                      ),
                    ),
                  ),

                  //navigation icon
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
