import 'package:bmi_new/Constants.dart';
import 'package:bmi_new/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'Calculate_Button.dart';
import 'Input_Page.dart';

class Result_Page extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretedResult;

  const Result_Page(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretedResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              //padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.bottomCenter,
              //margin: EdgeInsets.all(30.0),
              child: const Text(
                'YOUR RESULT',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
                colour: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: ResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiResult_style,
                    ),
                    Text(
                      interpretedResult,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPress: () {}),
          ),
          Calculate_btn(
            txt: 'Recalculate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
