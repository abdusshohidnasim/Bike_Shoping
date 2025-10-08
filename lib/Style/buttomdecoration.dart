import 'package:flutter/cupertino.dart';

import 'colors.dart';

BoxDecoration bottomdecoration (){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),

    gradient: LinearGradient(
      colors: [
        Custom_Colors.bottomColorsecenday,
        Custom_Colors.bottomColorsecenday,

        Custom_Colors.bottomColorprimary,
      ],
    ),
  );
}