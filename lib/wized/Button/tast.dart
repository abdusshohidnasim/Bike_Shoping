import 'package:bike/Style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  Button({super.key,required this.label ,required this.isSelected});
  String label;
  bool isSelected =false;
  @override
  Widget build(BuildContext context) {


    return Container(
alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        // --- ব্যাকগ্রাউন্ড কালার এবং ডিজাইন ---

        // isSelected যদি True হয়, তবে Gradient (আপনার ছবির নীল রং) ব্যবহার হবে
        gradient: isSelected
            ?  LinearGradient(
          colors: [
            Color(0xff323B4F),
            Color(0xff323B4F),


          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
            : null, // নির্বাচিত না হলে Gradient নয়

        // নির্বাচিত না হলে এই গাঢ় রংটি ব্যবহার হবে (আপনার ছবির ডানদিকের বাটন)
        color: isSelected ? null : const Color(0xff323B4F),

        borderRadius: BorderRadius.circular(12), // কোণাগুলি গোলাকার করা

        // ঐচ্ছিক: হালকা শ্যাডো (Neumorphic Effect-এর জন্য)
        boxShadow: isSelected
            ? [
          BoxShadow(
            color: const Color(0xff323B4F).withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: -2,
          ),
        ]
            : null,
      ),

      // --- বাটনের লেখা (Text) ---
      child: Text(
        label,
        style: TextStyle(
          // নির্বাচিত হলে সাদা টেক্সট, না হলে ধূসর
          color: isSelected ? Colors.white : Colors.grey[400],
          fontSize: 16,
          // নির্বাচিত হলে লেখা মোটা (bold) হবে, না হলে সাধারণ
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
