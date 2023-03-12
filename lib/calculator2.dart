import 'package:flutter/material.dart';
import 'package:calculator/element_style.dart';

class Calculator2 extends StatelessWidget {
  Calculator2({super.key});
  final List buttonsList = [
    'C',
    '⌫',
    '%',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '-\\+',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    Color orangeText = Theme.of(context).primaryColor;
    Color blackText = Colors.black;
    var result = 0, userInput = " ";

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (1 / 5) - 5,
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 5),
            child: Text(
              userInput.toString(),
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (1 / 5),
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 5),
            child: Text(
              result.toString(),
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          const Divider(
            height: 5,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Color.fromARGB(255, 224, 224, 224),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    ElementBox(element: buttonsList[0], textColor: orangeText),
                    ElementBox(element: buttonsList[1], textColor: orangeText),
                    ElementBox(element: buttonsList[2], textColor: orangeText),
                    ElementBox(element: buttonsList[3], textColor: orangeText),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[4], textColor: blackText),
                    ElementBox(element: buttonsList[5], textColor: blackText),
                    ElementBox(element: buttonsList[6], textColor: blackText),
                    ElementBox(element: buttonsList[7], textColor: orangeText),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[8], textColor: blackText),
                    ElementBox(element: buttonsList[9], textColor: blackText),
                    ElementBox(element: buttonsList[10], textColor: blackText),
                    ElementBox(element: buttonsList[11], textColor: orangeText),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[12], textColor: blackText),
                    ElementBox(element: buttonsList[13], textColor: blackText),
                    ElementBox(element: buttonsList[14], textColor: blackText),
                    ElementBox(element: buttonsList[15], textColor: orangeText),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[16], textColor: blackText),
                    ElementBox(element: buttonsList[17], textColor: blackText),
                    ElementBox(element: buttonsList[18], textColor: orangeText),
                    Expanded(
                      child: EqualSign(element: buttonsList[19]),
                    ),
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
