import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final bool isOdd;

  const CustomContainer({Key? key, required this.isOdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 300,
      color: isOdd ? Colors.cyan[200] : Colors.red[200],
    );
  }
}
