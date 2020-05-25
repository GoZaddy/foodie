import 'package:flutter/material.dart';
import 'package:foodie_login/UI/pages/login_screen.dart';
import 'package:foodie_login/UI/wrappers/green_background_wrapper.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  

  @override
  void initState() {
    super.initState();
    _controller  = AnimationController(
      lowerBound: 0.80,
      upperBound: 0.85,
      vsync: this,
      duration: Duration(milliseconds: 750),
    )..repeat(reverse: true); 

    Future.delayed(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return LoginScreen();
        }
      ));
    });  
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GreenBackgroundWrapper(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              child: ScaleTransition(
                scale: _controller,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/foodie-logo-black.png"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Foodie",
              style: Theme.of(context).accentTextTheme.headline1.copyWith(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}