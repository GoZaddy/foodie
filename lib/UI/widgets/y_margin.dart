import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {
  final double height;

  const YMargin(this.height);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height
    );
  }
}