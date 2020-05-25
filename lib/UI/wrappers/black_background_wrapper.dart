import 'package:flutter/material.dart';

class BlackBackgroundWrapper extends StatelessWidget {
  final Widget child;
  final Widget bottomBar;

  const BlackBackgroundWrapper({Key key, this.child, this.bottomBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      resizeToAvoidBottomPadding: false,
      body: child,
      bottomNavigationBar: bottomBar,
    );
  }
}