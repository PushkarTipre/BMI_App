import 'package:flutter/material.dart';
import 'package:bmi_new/Constants.dart';
import 'package:bmi_new/Results_Page_Main.dart';

class Calculate_btn extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;

  const Calculate_btn({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            txt,
            style: largetTextStyle,
          ),
        ),
        margin: EdgeInsets.all(18.0),
        //padding: EdgeInsets.only(bottom: 5.0),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red),
      ),
    );
  }
}
