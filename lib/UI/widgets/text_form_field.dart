import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;

  const CustomTextFormField({Key key, this.labelText, this.keyboardType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      style: Theme.of(context).primaryTextTheme.bodyText2,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal
        ),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white.withOpacity(0.5),
        )),
      ),
    );
  }
}
