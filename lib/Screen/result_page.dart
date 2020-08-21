import 'file:///C:/Users/Aayush/AndroidStudioProjects/bmi_calculator/lib/components/constants.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Aayush/AndroidStudioProjects/bmi_calculator/lib/components/CardData.dart';
import 'package:bmi_calculator/calculator.dart';

class result_page extends StatelessWidget {
  result_page(
      {@required this.result,
      @required this.resulttext,
      @required this.interpretation});

  final String result;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
              style: kLargeheadingstyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext.toUpperCase(),
                    style: kresulttextstyle,
                  ),
                  Text(
                    result,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kbottombarcolor,
              margin: EdgeInsets.only(top: 10),
              height: kbottombarheight,
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Center(
                  child: Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
