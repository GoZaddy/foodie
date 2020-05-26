import 'package:flutter/material.dart';
import 'package:foodie_login/UI/widgets/x_margin.dart';
import 'package:google_fonts/google_fonts.dart';



class OTPTextFields extends StatefulWidget{

  
  @override
  _OTPTextFieldsState createState() => _OTPTextFieldsState();
}

class _OTPTextFieldsState extends State<OTPTextFields> {
  
  final FocusNode _second = FocusNode();

  final FocusNode _third = FocusNode();

  final FocusNode _fourth = FocusNode();
  


  

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(         
          width: 50,
          child: TextFormField(
            textAlign: TextAlign.center,
            maxLength: 1,
            style: _otpTextFormFieldTextStyle,
            decoration: _otpTextFormFieldDecoration,
            onChanged: (text){
              if(text.length >= 1){
                _second.requestFocus();
              }
            },
          ),
        ),
        XMargin(20),
        Container(
          width: 50,
          child: TextFormField(
            textAlign: TextAlign.center,
            focusNode: _second,
            maxLength: 1,
            style: _otpTextFormFieldTextStyle,
            decoration: _otpTextFormFieldDecoration,
            onChanged: (text){
              if(text.length >= 1){
                _third.requestFocus();
              }
            },
          ),
        ),
        XMargin(20),
        Container(
          width: 50,
          child: TextFormField(
            textAlign: TextAlign.center,
            focusNode: _third,
            maxLength: 1,
            style: _otpTextFormFieldTextStyle,
            decoration: _otpTextFormFieldDecoration,
            onChanged: (text){
              if(text.length >= 1){
                _fourth.requestFocus();
              }
            },
          ),
        ),
        XMargin(20),
        Container(
          width: 50,
          child: TextFormField(
            textAlign: TextAlign.center,
            focusNode: _fourth,
            maxLength: 1,
            style: _otpTextFormFieldTextStyle,
            decoration: _otpTextFormFieldDecoration,
            onChanged: (text){
              if(text.length >= 1){
                _fourth.unfocus();
              }
            },
          ),
        )
      ],
    );
  }
}

const TextStyle _otpTextFormFieldTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 40,
  color: Colors.white
);

const InputDecoration _otpTextFormFieldDecoration = InputDecoration(
  counterText: "",
  
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: const Color(0x80ffffff),
      width: 1
    )
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white
    )
  )
);