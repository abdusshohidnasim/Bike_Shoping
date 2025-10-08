import 'package:bike/Style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.label, required this.isSelected});
  String label;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        gradient: isSelected
            ? LinearGradient(
                colors: [Color(0xff323B4F), Color(0xff323B4F)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null, //
        color: isSelected ? null : const Color(0xff323B4F),

        borderRadius: BorderRadius.circular(12), //
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

      //
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[400],
          fontSize: 16,

          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
