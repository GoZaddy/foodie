import 'package:flutter/material.dart';

class GreenBackgroundWrapper extends StatelessWidget {
  final Widget child;

  const GreenBackgroundWrapper({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45E9BD),
      body: child
    );
  }
}