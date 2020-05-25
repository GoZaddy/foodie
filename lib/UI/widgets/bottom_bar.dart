import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback onClickActionText;
  final String normalText;
  final String actionText;
  final Color backgroundColor;

  const BottomBar(
      {Key key, this.onClickActionText, this.normalText, this.actionText, this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: backgroundColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white.withOpacity(0.2))
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: RichText(
                text: TextSpan(
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1
                        .copyWith(color: Color(0xff8A9EAD), fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(text: normalText),
                      TextSpan(
                          text: actionText,
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = onClickActionText)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
