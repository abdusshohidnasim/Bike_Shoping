import 'package:bike/Style/colors.dart';
import 'package:bike/wized/Button/tast.dart';
import 'package:bike/wized/page2appbar.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    bool Selected = true;

    List image = [
      "assets/images/bike1.png",
      "assets/images/bike2.png",
      "assets/images/helmate.png", // Duplicate added for example
    ];

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Custom_Colors.primaryColor,
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Page2appbar(label: "My Shopping Cart"),
          ),
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Container(
                padding: EdgeInsets.all(20),

                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Custom_Colors.secendaryColor,

                      height: 100,
                      width: 100,
                      child: Image(
                        image: AssetImage(image[i]),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("PEUGEOT- LR01"), Text("\$ 1,999.99")],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        SizedBox(width: 5),
                        Text("1"),
                        SizedBox(width: 5),
                        Icon(Icons.horizontal_rule),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 20),
          Text(
            "Your cart qualifies for free shipping",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(label: "Bike30", isSelected: isSelected),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Apply",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Subtotal:"), Text("\$6119.99")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Subtotal:"), Text("\$6119.99")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("SDiscount:"), Text("\$6119.99")],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("SDelivery Fee:"), Text("\$6119.99")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("SDelivery Fee:"), Text("\$6119.99")],
            ),
          ),
          SizedBox(height: screenWidth/5,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
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
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white, // Ensure icon is visible
                  ),
                ),
              ),
              SizedBox(width:20 ,),
              Text(
                "Chack Out",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Ensure text is visible
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 70), // Use SizedBox to balance the space
            ],
          ),
        ],
      ),
    );
  }
}
