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
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 250, 251),
          borderRadius: BorderRadius.circular(20),
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
                    child: const Icon(
                      Icons.pause_rounded,
                      color: Color.fromARGB(255, 170, 61, 176),
                      size: 35,
                    ),
                  ),

                  Container(
                    // padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 134, 228),
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(),
                    ),
                    child: OutlinedButton.icon(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>PlayerScreen()),);
                    }, icon:const Icon(Icons.arrow_right_alt, size: 20,color: Colors.white), label: const Text(''),)
                  ),

                  //pause

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
