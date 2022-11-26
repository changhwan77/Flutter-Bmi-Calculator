import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calaulator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiText,
      required this.bodyText,
      required this.resultText});

  final String resultText;
  final String bmiText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'BMI 결과',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bodyText,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: BottomButton(
          BottomText: 'BMI 다시 계산하기',
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
