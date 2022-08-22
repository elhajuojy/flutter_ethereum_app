import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 129, 227, 133),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 53, 51, 51),
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
    );
  }
}
