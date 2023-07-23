import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TracksCard extends StatelessWidget{
  const TracksCard({super.key, required this.name});

  final String name;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 249, 250, 251),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    //icon
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //icon 1
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Icon(
                        Icons.play_arrow,
                        color: Color.fromARGB(255, 170, 61, 176),
                        size: 35,
                                          ),
                      ),
                  
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Icon(
                        Icons.pause_rounded,
                        color: Color.fromARGB(255, 170, 61, 176),
                        size: 35,
                      ),
                    ),
    
                      //icon2
                    ],),
                   const SizedBox(height: 15,),
                    //min
                    const Padding(
                      padding: EdgeInsets.only(right: 100),
                      child: Text(
                        "5 mins",
                        style: TextStyle(
                          color: AppColor.secondaryTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
    
    
                    //status
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        name,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 3, 8),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
    );
    
  }
}