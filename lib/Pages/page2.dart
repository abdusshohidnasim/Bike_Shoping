import 'dart:async';

import 'package:bike/Style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../wized/Button/tast.dart';
import '../wized/page2appbar.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int currentindex = 0;
  Timer? timer; // Instance variable to hold the timer


  List image = [
    "assets/images/bike1.png",
    "assets/images/bike2.png",
    "assets/images/bike1.png", // Duplicate added for example
  ];

  @override
  void initState() {
    super.initState();
    // Correctly assign the periodic timer to the instance variable 'timer'
    timer = Timer.periodic(const Duration(seconds: 3), (time) {
      // It's often better to use a slightly longer duration for image carousels
      // I've changed it to 3 seconds for better viewing experience.
      if (mounted) {
        setState(() {
          currentindex = (currentindex + 1) % image.length;
        });
      }
    });
  }


  @override
  void dispose() {
    // Correctly cancel the timer when the widget is removed
    timer?.cancel();
    super.dispose();
  }
  bool isSelected=true;
  bool Selected=true;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(
      context,
    ).size.height; // Not used in this version



    return Scaffold(

      // Assuming Custom_Colors.primaryColor is the background color without the image
      backgroundColor: Custom_Colors.primaryColor,
      body: Container(
        // The background image decoration
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgrount2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              // Row for Back Button and Titl
              InkWell(
                  onTap: (){setState(() {
                    Navigator.pop(context);
                  });},
                  child: Page2appbar(label: "PEUGEOT - LR01",)),

              // ---

              // Image Carousel Section
              SizedBox(
                height: 300,
                width: screenWidth,
                child: AnimatedSwitcher(
                  duration: const Duration(
                    milliseconds: 500,
                  ), // Shorter duration for smoother transition
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                        // Use a FadeTransition for a smoother look
                        return FadeTransition(opacity: animation, child: child);
                      },
                  child: Image(
                    image: AssetImage(image[currentindex]),
                    // Key must be unique for AnimatedSwitcher to work.
                    key: ValueKey<String>(image[currentindex]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // ---

              // Dot Indicators Section
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the dots
                  children: List.generate(image.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 300,
                      ), // Smooth transition for dot size/color
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 10,
                      // The active dot is wider
                      width: currentindex == index ? 20 : 10,
                      decoration: BoxDecoration(
                        color: currentindex == index
                            ? Colors
                                  .white // Active dot is solid white
                            : Colors.white.withOpacity(
                                0.6,
                              ), // Inactive dot is translucent
                        borderRadius: BorderRadius.circular(5),
                      ),
                    );
                  }),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                height: screenHeight / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    topLeft: Radius.circular(70),
                  ),
                  color: Custom_Colors.primaryColor,
                ),
                child: Column(
                  children: [

                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(

                            child: Container(
                              height: 50,width: screenWidth/3,
                              alignment: Alignment.center,
                              child: Button(label: "Description", isSelected: isSelected),),onTap: (){
                              setState(() {
                          isSelected = !isSelected;
                            });},)
                        ,
                        InkWell(

                          child: Container(
                            height: 50,width: screenWidth/3,
                            alignment: Alignment.center,
                            child: Button(label: "Specification", isSelected: Selected),),onTap: (){
                          setState(() {
                            Selected = !Selected;

                            }

                          );},)



                      ]


                    ),
                    SizedBox(height: 30,),
                    Row(children: [
                      Text("PEUGEOT - LR01",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
                    ],),
                    SizedBox(height: 20,),

                    Wrap(
                      children: [
                        Text("The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      ],
                    )
                  ],
                ),
              ),
              Container(height: 100,width: double.infinity,
                decoration: BoxDecoration(gradient:LinearGradient(colors: [
                  Custom_Colors.primaryColor,
                  Custom_Colors.primaryColor,
                 // Color(0xff222834),

                ]) ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("\$ 1,999.99",
                    style: TextStyle(fontWeight: FontWeight.w400,
                        fontSize: 24,color: Color(0xff3D9CEA)),),
                  ElevatedButton(onPressed: (){}, 
                    child: Text("Add Card"),style: ElevatedButton.styleFrom(backgroundColor: Color(0xff3D9CEA,),maximumSize: Size(200, 200),),)
                ],))


            ],
          ),
        ),
      ),
    );
  }
}



