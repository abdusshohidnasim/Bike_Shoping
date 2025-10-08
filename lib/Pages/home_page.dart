import 'dart:math';

import 'package:bike/Pages/page2.dart';
import 'package:bike/Pages/page3.dart';
import 'package:bike/Style/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../Style/buttomdecoration.dart';
import '../wized/Button/AI_button.dart';
import '../wized/Button/helmet.dart';
import '../wized/bike.dart';
import '../wized/part1..dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int slectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    double ScenWith = MediaQuery.of(context).size.width;
    double Scenhide = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Custom_Colors.primaryColor,
      appBar: AppBar(
        backgroundColor: Custom_Colors.primaryColor,
        title: Text(
          "Choose Your Bike",
          style: TextStyle(
            fontSize: 20,
            color: Custom_Colors.textcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            decoration: bottomdecoration(),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 40),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Custom_Colors.primaryColor,
        onPressed: (){},child: 
      
      Transform.rotate(
        angle: -60 * pi / 180,
        child: Image(
          image: AssetImage("assets/images/bottom1.png"),height: 60,
        ),
      )),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Custom_Colors.primaryColor,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            slectedIndex = index;
            if(slectedIndex==2){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
            }
            if(slectedIndex==3){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
            }
          });
        },
        currentIndex:slectedIndex ,


        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.black26,),label: ""
            // icon: slectedIndex == 0
            //     ? Transform.rotate(
            //         angle: -60 * pi / 180,
            //         child: Image(
            //           image: AssetImage("assets/images/bottom1.png"),height: 70,fit: BoxFit.fill,
            //         ),
            //       )
            //     : Icon(Icons.pedal_bike),
            // label: "",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.map), label: ""),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: ""),
        ],
      ),

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image:const AssetImage("assets/images/backgrount.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Part1(),
            Button(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 60),
                    for (int v = 0; v < 5; v++) Car1(),
                  ],
                ),
                Column(children: [for (int v = 0; v < 5; v++) Helmet()]),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
