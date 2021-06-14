import 'package:app/src/services/utility.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/heading_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';

import 'appointment_card.dart';

class AppointmentCarouselPage extends StatefulWidget {
  @override
  _AppointmentCarouselPageState createState() =>
      _AppointmentCarouselPageState();
}

class _AppointmentCarouselPageState extends State<AppointmentCarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(AppTheme.kBodyPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingWidget(
                  title: 'Upcoming Appointments',
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: new BoxDecoration(
                    // color: Color(0xffDCFAF0),
                    border: Border.all(
                        width: 1, color: Theme.of(context).primaryColor),
                    borderRadius:
                        new BorderRadius.circular(AppTheme.kBorderRadius),
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppTheme.kFontColor1,
                  ),
                )
              ],
            ),
            SpacerWidget(AppTheme.kBodyPadding),
            Container(
              height: Utility.displayHeight(context) * .29,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => AppointmentCardWidget(),
                itemCount: 5,
              ),
            )
          ],
        ));
  }
}
