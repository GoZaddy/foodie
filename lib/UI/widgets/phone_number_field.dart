import 'package:flutter/material.dart';
import 'package:foodie_login/UI/widgets/x_margin.dart';



class PhoneNumber {
  String _phoneCode = "";
  String _restOfPhoneNumber = "";
  final PhoneNumberTextFormField _formField = PhoneNumberTextFormField(
    restOfPhoneNumberFocusNode: FocusNode(),
    phoneNumberCodeFocusNode: FocusNode(),
    phoneNumberCodeController:  TextEditingController(),
    restOfPhoneNumberController: TextEditingController()
  );
  
  Widget get formField => _formField;
  String get phoneCode => _phoneCode;
  String get restOfPhoneNumber => _restOfPhoneNumber;
  String get fullNumber => _phoneCode + " " + _restOfPhoneNumber;


  PhoneNumber(){
    _formField.phoneNumberCodeController.addListener(() { 
      _phoneCode = _formField.phoneNumberCodeController.text.toString();
    });
    _formField.restOfPhoneNumberController.addListener(() { 
      _restOfPhoneNumber = _formField.restOfPhoneNumberController.text.toString();
    });
  }
}


class PhoneNumberTextFormField extends StatelessWidget {
  final FocusNode restOfPhoneNumberFocusNode;
  final FocusNode phoneNumberCodeFocusNode;
  final TextEditingController phoneNumberCodeController;
  final TextEditingController restOfPhoneNumberController;

  const PhoneNumberTextFormField({Key key, @required this.restOfPhoneNumberFocusNode, @required this.phoneNumberCodeFocusNode, this.phoneNumberCodeController, this.restOfPhoneNumberController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Phone",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Container(
          width: 80,
          child: TextFormField(
            maxLength: 3,
            controller: phoneNumberCodeController,
            onChanged: (value) {
              if (value.length >= 3) {
                restOfPhoneNumberFocusNode.requestFocus();
              }
            },
            keyboardType: TextInputType.number,
            style: Theme.of(context).primaryTextTheme.bodyText2,
            maxLengthEnforced: true,
            decoration: InputDecoration(
              counter: null,
              counterText: "",
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.white.withOpacity(0.5),
              )),
            ),
          ),
        ),
        XMargin(40),
        Expanded(
            child: Container(
          child: TextFormField(
            controller: restOfPhoneNumberController,
            keyboardType: TextInputType.number,
            focusNode: restOfPhoneNumberFocusNode,
            style: Theme.of(context).primaryTextTheme.bodyText2,
            onTap: () {},
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.white.withOpacity(0.5),
              )),
            ),
          ),
        )),
      ])
    ]);
  }
}
