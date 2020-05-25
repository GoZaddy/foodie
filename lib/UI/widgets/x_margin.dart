import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  final double width;

  const XMargin(this.width);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width
    );
  }
}