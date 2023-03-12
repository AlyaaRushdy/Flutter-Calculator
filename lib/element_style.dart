import 'package:flutter/material.dart';

class ElementBox extends StatelessWidget {
  const ElementBox({super.key, required this.element, required this.textColor});
  final String element;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (3 / 5) / 5,
      width: MediaQuery.of(context).size.width / 4,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          element,
          style: TextStyle(
            fontSize: 24,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class EqualSign extends StatelessWidget {
  const EqualSign({super.key, required this.element});
  final String element;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (3 / 5) / 5 - 20,
      width: MediaQuery.of(context).size.width / 4,
      alignment: Alignment.center,
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Text(
        element,
        style: const TextStyle(
          fontSize: 34,
          color: Colors.white,
        ),
      ),
    );
  }
}
