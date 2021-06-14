import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  HeadingWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    ));
  }
}
