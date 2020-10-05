import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Your Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                  'Your Result',
                style: kTitleText,

              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:ReusableCard(colour: kActiveCardColour,
            Cardchild: Column(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    resultText.toUpperCase(),
                  style: kResultText,
                ),
                Text(
                 bmiResult,
                  style: kBmiValue,
                ),
                Text(resultInterpretation,style:kBodyText ,textAlign: TextAlign.center,)
              ],
            ),
            ),
          ),
          BottomButton(bottomTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
