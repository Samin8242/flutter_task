import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  const MoodCard({super.key, required this.iconImagePath, required this.moodName});

  final iconImagePath;
  final String moodName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 249, 250, 251),
        ),
        child: Row(
          children: [
            Column(
              children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset( iconImagePath, height: 60,),
                  ),

                //   Image.asset(
                //   iconImagePath,
                //   height: 60,
                // ),
                SizedBox(
                  height: 5,
                ),
                Text(moodName, style: TextStyle(color: Colors.black)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
