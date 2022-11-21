import 'package:flutter/material.dart';
import 'package:tutorial/screens/calulator_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  String history = "";
  String displayText = "";
  late String res;
  late String operation;

  void btnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      displayText = '';
      firstNum = 0;
      secondNum = 0;
      res = "";
    } else if (btnValue == 'AC') {
      displayText = '';
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if (btnValue == '+/-') {
      if (displayText[0] != '-') {
        res = '-' + displayText;
      } else {
        res = displayText.substring(1);
      }
    } else if (btnValue == '<') {
      if (displayText.length > 0) {
        res = displayText.substring(0, displayText.length - 1);
      }
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNum = int.parse(displayText);
      res = "";
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(displayText);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(displayText + btnValue).toString();
    }

    setState(() {
      displayText = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          centerTitle: true,
        ),
        backgroundColor: Color(0XFF28527a),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0X66FFFFFF),
                  ),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  displayText,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: "AC",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "C",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "<",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "/",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: "7",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "8",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "9",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "X",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: "4",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "5",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "6",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "-",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: "1",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "2",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "3",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "+",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: "+/-",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "0",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "00",
                fillColor: 0XFF8ac4D0,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
              CalculatorButton(
                text: "=",
                fillColor: 0XFFf4d160,
                textColor: 0XFF000000,
                callback: btnClick,
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
