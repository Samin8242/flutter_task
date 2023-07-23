import 'package:flutter/material.dart';
import '../constants/app_color.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({
    super.key,
    required this.size,
     this.child,
    this.onPressed,
     this.blur =20,
     this.distance = 10,
    this.colors, this.imageUrl, this.padding,
  });

  final double size;
  final Widget? child;
  final VoidCallback? onPressed;
  final double blur;
  final double distance;
  final List<Color>? colors;
  final String? imageUrl;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: size,
      padding:  EdgeInsets.all(padding ?? 3),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(36),
        color: colors == null ? AppColor.bgColor : colors![1],
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 248, 248, 248),
            blurRadius: blur,
            offset: Offset(-distance, -distance),
          ),
          BoxShadow(
            color: Color.fromARGB(255, 230, 202, 238),
            blurRadius: blur,
            offset: Offset(distance, distance),
          ),
        ],
      ),
      child: imageUrl!=null?

       ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset( imageUrl!, height: 60,),
                  )


      // Container(
      //    decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12),
      //     child:
      //    )
      // )

      //  Image.asset(imageUrl! )
       

      //  CircleAvatar(
        
      //    backgroundImage: AssetImage(imageUrl!),
      //  )
      //RectangularAvatar(backgroundImage:AssetImage(imageUrl!), height: 80, width: 80, )
       :Container(
        decoration: BoxDecoration(
            color: AppColor.bgColor,
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors ??
                  [
                    AppColor.white,
                    AppColor.bgDark,
                  ],
            )),
        child: child,
      ),
    );
  }
}
