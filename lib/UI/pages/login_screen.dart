import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_login/UI/widgets/big_button.dart';
import 'package:foodie_login/UI/widgets/bottom_bar.dart';
import 'package:foodie_login/UI/widgets/phone_number_field.dart';
import 'package:foodie_login/UI/widgets/x_margin.dart';
import 'package:foodie_login/UI/widgets/y_margin.dart';
import 'package:foodie_login/UI/wrappers/black_background_wrapper.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  void initState() {
    super.initState();
   SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
   
  
  }

  
  @override
  Widget build(BuildContext context) {
    
    return BlackBackgroundWrapper(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              YMargin( MediaQuery.of(context).size.height * 0.2),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/foodie-logo-green.png")
                  )
                ),
              ),
              YMargin(20),
              Text(
                "Welcome back!",
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              YMargin(12),
              Text(
                "Please login to your account.",
                style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(
                  color: Colors.white.withOpacity(0.6)
                ),
              ),
              YMargin(35),
              Form(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 500,
                  ),
                  width: MediaQuery.of(context).size.width * 0.85,
                  //color: Colors.red,
                  child: PhoneNumberTextFormField(
                    restOfPhoneNumberFocusNode: FocusNode(),
                    phoneNumberCodeFocusNode: FocusNode(),
                  )
                ),
              ),
              YMargin(60),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: BigButton(
                  text: "LOGIN",
                  onClick: (){},
                ),
              )



            ],
          ),
        ),
        bottomBar: BottomBar(
          backgroundColor: Theme.of(context).primaryColor,
          normalText: "Don't have an account?",
          actionText: " SIGN UP",
          onClickActionText: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }));
          },
        ));
  }
}


