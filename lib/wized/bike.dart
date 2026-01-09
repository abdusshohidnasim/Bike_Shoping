import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car1 extends StatelessWidget {
  const Car1({super.key});

  @override
  Widget build(BuildContext context) {
    double ScenWith = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 400,
            width: ScenWith / 2.2,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/card2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(width: 30),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: ScenWith / 3,
                  child: Image.asset("assets/images/bike2.png"),
                ),

                Row(
                  children: [
                    Text(
                      "Road Bike",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "PEUGEOT - LR01 ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(

                  children: [
                    Text("R \$ 1,999.99",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w500,color: Colors.grey),textAlign: TextAlign.start,),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
