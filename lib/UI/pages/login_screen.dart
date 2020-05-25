import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_login/UI/widgets/big_button.dart';
import 'package:foodie_login/UI/widgets/bottom_bar.dart';
import 'package:foodie_login/UI/widgets/x_margin.dart';
import 'package:foodie_login/UI/widgets/y_margin.dart';
import 'package:foodie_login/UI/wrappers/black_background_wrapper.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneNumberCodeController = TextEditingController();
  FocusNode _phoneCodeFocusNode = FocusNode();
  FocusNode _restOfPhoneNumberFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);

   
  
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
     
    
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
                child: LimitedBox(
                  maxWidth: 500,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    //color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Phone",
                              style: Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 80,
                              child: TextFormField(
                                maxLength: 3,
                                
                                controller: _phoneNumberCodeController,
                                focusNode: _phoneCodeFocusNode,
                                onChanged: (value){
                                  if(value.length >= 3){
                                    _restOfPhoneNumberFocusNode.requestFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                style: Theme.of(context).primaryTextTheme.bodyText2,
                                maxLengthEnforced: true,
                                decoration: InputDecoration(
                                  counter: null,
                                  counterText: "",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white
                                    )
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                    )
                                  ),                           
                                ),                           
                              ),
                            ),
                            XMargin(40),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  focusNode: _restOfPhoneNumberFocusNode,
                                  style: Theme.of(context).primaryTextTheme.bodyText2,
                                  maxLengthEnforced: true,
                                  onTap: (){

                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),                                   
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.5),
                                      )
                                    ),                           
                                  ),                                  
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
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


