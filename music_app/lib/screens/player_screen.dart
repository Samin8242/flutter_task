import 'package:flutter/material.dart';
import 'package:music_app/constants/app_color.dart';
import 'package:music_app/model/music_model.dart';
import '../widget/neumorphism_buttom.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PlayerScreenState();
  }
}

class _PlayerScreenState extends State<PlayerScreen> {
  final _currentItemPlaying = 0;
  double _currentPlayback = 0;

  String formatePlayerTime(double time) {
    final min = time ~/ 60;
    final sec = time % 60;
    return "$min:${sec.toStringAsFixed(0).padRight(2, "0")}";
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 95, 85, 94),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    NeumorphismBtn(
                      size: 30,
                      imageUrl: "assets/images/2.jpg",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                NeumorphismBtn(
                  size: size.width * 0.8,
                  distance: 20,
                  padding: 10,
                  imageUrl:  "assets/images/4.jpg",
                ),

                 
                const Column(
                  children: [
                    Text(
                      "Current playing",
                      style: TextStyle(
                        color: AppColor.secondaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Clean water noice",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 3, 8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
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
                const NeumorphismBtn(
                  size: 80,
                  colors: [
                    Color.fromARGB(255, 236, 205, 233),
                    Color.fromARGB(255, 247, 241, 248)
                  ],
                  padding: 7,
                  child: Icon(
                    Icons.pause_rounded,
                    color: Color.fromARGB(255, 170, 61, 176),
                    size: 35,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
