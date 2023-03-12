import 'package:flutter/material.dart';
import 'package:calculator/element_style.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});
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
          SizedBox(
            height: MediaQuery.of(context).size.height * (3 / 5),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              shrinkWrap: true,
              itemCount: buttonsList.length,
              itemBuilder: (context, index) {
                return ElementBox(
                  element: buttonsList[index],
                  textColor: Colors.black,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
