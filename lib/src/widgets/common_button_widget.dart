import 'package:app/src/styles/theme.dart';
import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final Color textColor;
  final ValueChanged onTap;
  CommonButtonWidget(
      {Key key,
      @required this.buttonText,
      this.onTap,
      this.bgColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(AppTheme.kBorderRadius))),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor ?? AppTheme.kFontColor1),
      ),
    );
  }
}
