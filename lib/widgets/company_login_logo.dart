import 'package:flutter/material.dart';

class CompanyLoginLogo extends StatelessWidget {
  final List CompanyLogosForLogin = [
    'assets/images/google.png',
    'assets/images/apple.png',
    'assets/images/facebook.png',
  ];

  final int index;

  CompanyLoginLogo({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Image.asset(CompanyLogosForLogin[index]),
      ),
    );
  }
}
