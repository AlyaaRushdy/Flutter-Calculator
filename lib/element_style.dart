import 'package:flutter/material.dart';

class ElementBox extends StatelessWidget {
  const ElementBox({super.key, required this.element});
  final element;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (3 / 5) / 5,
      width: MediaQuery.of(context).size.width / 4,
      child: Container(
        alignment: Alignment.center,
        color: Theme.of(context).primaryColor,
        child: Expanded(
          child: Text(
            element,
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
