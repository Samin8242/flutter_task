import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class MiniCourses extends StatelessWidget {
  const MiniCourses({
    super.key,
    required this.name,
    this.iconImagePath,
  });

  final String name;
  final iconImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 249, 250, 251),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [

            //pic
            ClipRRect(
              borderRadius: BorderRadius.circular(11),

              child: Image.asset(iconImagePath),
            ),
            SizedBox(
              width: 8,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //text
                Text(
                  name,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 8),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    "6 hours course",
                    style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //text
              ],
            )
          ],
        ),
      ),
    );
  }
}
