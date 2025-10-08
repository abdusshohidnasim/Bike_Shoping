import 'package:flutter/cupertino.dart';

import '../Style/colors.dart';

class Part1 extends StatelessWidget {
  const Part1({super.key});

  @override
  Widget build(BuildContext context) {
    double ScenWith = MediaQuery.of(context).size.width;
    return  Container(
      height: 400,
      width: ScenWith,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/card1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/bike1.png"),
          Positioned(
            bottom: 50,
            left: 50,
            child: Text(
              "30% Off",

              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Custom_Colors.textcolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
