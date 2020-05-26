import 'package:flutter/material.dart';
import 'package:foodie_login/UI/pages/otp_screen.dart';
import 'package:foodie_login/UI/widgets/big_button.dart';
import 'package:foodie_login/UI/widgets/bottom_bar.dart';
import 'package:foodie_login/UI/widgets/phone_number_field.dart';
import 'package:foodie_login/UI/widgets/text_form_field.dart';
import 'package:foodie_login/UI/widgets/y_margin.dart';
import 'package:foodie_login/UI/wrappers/black_background_wrapper.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  PhoneNumber phoneNumber = PhoneNumber();
  @override
  Widget build(BuildContext context) {
    return BlackBackgroundWrapper(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 600
          ),
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          width: MediaQuery.of(context).size.width * 0.85,
          //color: Colors.red,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Create Account",
                    style: Theme.of(context).primaryTextTheme.headline1.copyWith(
                      fontSize: 30
                    ),
                  ),
                ],
              ),
              YMargin(50),
              Form(
                child: Column(
                  children: <Widget>[
                    CustomTextFormField(
                      labelText: "Full Name",
                      keyboardType: TextInputType.text,
                    ),
                    YMargin(45),
                    phoneNumber.formField,
                    YMargin(45),
                    CustomTextFormField(
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                    )
                  ],
                )
              ),
              YMargin(40),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: BigButton(
                  text: "NEXT",
                  onClick: (){
                    print(phoneNumber.fullNumber);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return OTPScreen(phoneNumber: phoneNumber.fullNumber);
                      })
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomBar: BottomBar(
        normalText: "Already have an account?",
        actionText: " LOG IN",
        onClickActionText: (){
          Navigator.pop(context);
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}