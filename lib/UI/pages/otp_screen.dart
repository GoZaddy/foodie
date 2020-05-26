import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie_login/UI/widgets/big_button.dart';
import 'package:foodie_login/UI/widgets/otp_text_fields.dart';
import 'package:foodie_login/UI/widgets/y_margin.dart';
import 'package:foodie_login/UI/wrappers/black_background_wrapper.dart';

class OTPScreen extends StatefulWidget {
  final String phoneNumber;

  const OTPScreen({Key key, this.phoneNumber}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlackBackgroundWrapper(
      child: SingleChildScrollView(
        reverse: true,
        padding:  EdgeInsets.only(
             bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Align(
          alignment: Alignment.center,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 600
            ),
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            width: MediaQuery.of(context).size.width * 0.85,
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
                YMargin(30),
                Container(
                  height: 135,
                  width: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/otp-avatar.png")
                    )
                  ),
                ),
                YMargin(20),
                Text(
                  
                  "Verification code",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.headline1.copyWith(
                    fontSize: 30
                  ),
                ),
                YMargin(20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                    
                    children: <TextSpan>[
                      TextSpan(
                        text: "Please type the verification code sent to your phone "
                      ),
                      TextSpan(
                        text: "+" + widget.phoneNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  ),
                ),
                YMargin(20),
                Container(
                  child: OTPTextFields()
                ),
                YMargin(40),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  constraints: BoxConstraints(
                    maxWidth: 400
                  ),
                  child: BigButton(
                    text: "SUBMIT",
                    onClick: (){},
                  ),
                ),
                YMargin(20),
                FlatButton(
                  onPressed: (){},
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text(
                    "Resend",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                )     
              ],
            ),
          ),
        ),
      ),
    );
  }
}