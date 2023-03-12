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
    '|',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * (1 / 5) - 5,
            child: Expanded(
              child: Card(
                color: Theme.of(context).primaryColor,
                child: const Expanded(
                  child: Text("data"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * (1 / 5),
            child: Expanded(
              child: Card(
                color: Theme.of(context).primaryColor,
                child: const Expanded(
                  child: Text("result"),
                ),
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
                    ElementBox(element: buttonsList[0]),
                    ElementBox(element: buttonsList[1]),
                    ElementBox(element: buttonsList[2]),
                    ElementBox(element: buttonsList[3]),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[4]),
                    ElementBox(element: buttonsList[5]),
                    ElementBox(element: buttonsList[6]),
                    ElementBox(element: buttonsList[7]),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[8]),
                    ElementBox(element: buttonsList[9]),
                    ElementBox(element: buttonsList[10]),
                    ElementBox(element: buttonsList[11]),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[12]),
                    ElementBox(element: buttonsList[13]),
                    ElementBox(element: buttonsList[14]),
                    ElementBox(element: buttonsList[15]),
                  ],
                ),
                Row(
                  children: [
                    ElementBox(element: buttonsList[16]),
                    ElementBox(element: buttonsList[17]),
                    ElementBox(element: buttonsList[18]),
                    ElementBox(element: buttonsList[19]),
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
