import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../Style/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    double ScenWith = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,

      child: Transform.rotate(
        angle:  -8 * (pi / 180),
        child: Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         // spacing: 20,
          spacing: ScenWith/12 ,


          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,

              decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [
                    Custom_Colors.bottomColorprimary,
                    Custom_Colors.bottomColorsecenday,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("AI"),
            ),

            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Custom_Colors.bottomColorprimary,
                    Custom_Colors.bottomColorsecenday,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/bicycle.png",
                width: 30,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Custom_Colors.bottomColorprimary,
                    Custom_Colors.bottomColorsecenday,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/Road.png", width: 30),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Custom_Colors.bottomColorprimary,
                    Custom_Colors.bottomColorsecenday,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/Union (1).png",
                width: 30,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Custom_Colors.bottomColorprimary,
                    Custom_Colors.bottomColorsecenday,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/Union.png", width: 30),
            ),
          ],
        ),
      ),
    );
  }
}
