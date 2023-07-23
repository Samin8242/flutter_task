import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_app/constants/app_color.dart';
import 'package:music_app/widget/current_playing.dart';
import 'package:music_app/widget/mini_courses.dart';
import 'package:music_app/widget/mood_card.dart';
//import 'package:music_app/widget/now_playing.dart';
import 'package:music_app/widget/tracks_card.dart';

import '../widget/neumorphism_buttom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            //app bar

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 212, 36, 228),
                    ),
                      // Text(
                      //   'hello',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 18),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Text(
                      //   'Samin yasar',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 24),
                      // )

                    ],
                  ),
                  SizedBox(width: 250,),
                  Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 142, 129, 140),
                    ),
                  NeumorphismBtn(
                    size: 30,
                    imageUrl: "assets/images/2.jpg",
                  ),
                  //profilr pic
                  // Container(
                  //   padding: EdgeInsets.all(12),
                  //   decoration: BoxDecoration(
                  //     color: Colors.deepPurple,
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  //   child: Icon(
                  //     Icons.person,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Your Mood',
                    style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            //horizontal list view
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MoodCard(
                      moodName: 'Calm', iconImagePath: "assets/images/4.jpg"),
                  MoodCard(
                      moodName: 'Stress', iconImagePath: "assets/images/1.jpg"),
                  MoodCard(
                      moodName: 'HeartBreak',
                      iconImagePath: "assets/images/7.jpg"),
                  MoodCard(
                      moodName: 'Love', iconImagePath: "assets/images/9.jpg"),
                  MoodCard(
                      moodName: 'Lofi', iconImagePath: "assets/images/2.jpg"),
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Mindfulness trackers',
                    style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Container(
              height: 130,
              //width: 200,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const TracksCard(name: "Deep Meditation"),
                  const TracksCard(name: "Normal Meditation"),
                  const TracksCard(name: "Medium Meditation"),
                ],
              ),
            ),

            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Mini Courses',
                    style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Container(
              height: 70,
              //width: 200,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const MiniCourses(
                    name: 'Meditate easily',
                    iconImagePath: "assets/images/2.jpg",
                  ),
                  MiniCourses(
                    name: 'Meditate easily',
                    iconImagePath: "assets/images/9.jpg",
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Expanded(
              child: Container(
                height: 200,
                child: CurrentPlaying(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
