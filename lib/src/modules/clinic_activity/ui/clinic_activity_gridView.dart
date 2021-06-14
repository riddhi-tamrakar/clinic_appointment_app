import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/heading_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';

import 'clinic_activity_card.dart';

class ClinicActivityGridViewPage extends StatefulWidget {
  @override
  _ClinicActivityGridViewPageState createState() =>
      _ClinicActivityGridViewPageState();
}

class _ClinicActivityGridViewPageState
    extends State<ClinicActivityGridViewPage> {
  final List<Map> data = List.generate(
      6,
      (index) => {
            "appointmentdata":
                "${index % 2 == 0 ? "+10% since last week" : "-5% since last week"}",
            "appointmentValue": "${index % 2 == 0 ? 253 + index : 103 + index}",
            "appointmentStatus":
                "${index % 2 == 0 ? "Total Appointments" : "Cancelled"}"
          }).toList();

  Widget _week() => Container(
        padding: EdgeInsets.all(4),
        decoration: new BoxDecoration(
          border: Border.all(width: 1, color: AppTheme.kShimmerBaseColor),
          borderRadius: new BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            SpacerWidget(5),
            Text(
              "Week",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SpacerWidget(5),
            Container(
              padding: EdgeInsets.all(2),
              decoration: new BoxDecoration(
                color: AppTheme.kSecondaryColor.withOpacity(0.7),
                border: Border.all(width: 1, color: AppTheme.kSecondaryColor),
                borderRadius: new BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.close,
                color: AppTheme.kFontColor2,
                size: 12,
              ),
            ),
            SpacerWidget(5)
          ],
        ),
      );

  Widget _monthAndYear() => Container(
        padding: EdgeInsets.all(6),
        decoration: new BoxDecoration(
          border: Border.all(width: 1, color: AppTheme.kShimmerBaseColor),
          borderRadius: new BorderRadius.circular(50),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              SpacerWidget(5),
              Text(
                "Month",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              VerticalDivider(
                color: Colors.black,
              ),
              Text(
                "Year",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SpacerWidget(5)
            ],
          ),
        ),
      );

  Widget _clinicActivity() => Container(
        margin: const EdgeInsets.only(
          left: AppTheme.kBorderRadius,
          right: AppTheme.kBorderRadius,
        ),
        child: Column(
          children: [
            HeadingWidget(
              title: "Clinic Activity",
            ),
            SpacerWidget(AppTheme.kBodyPadding),
            Row(
              children: [_week(), SpacerWidget(5), _monthAndYear()],
            )
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(AppTheme.kBodyPadding),
        child: Column(
          children: [
            _clinicActivity(),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: AppTheme.kBodyPadding,
                      mainAxisSpacing: AppTheme.kBodyPadding,
                      crossAxisCount: 2),
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return ClinicCardWidget(
                      title: data[index]["appointmentdata"],
                      value: data[index]["appointmentValue"].toString(),
                      subTitle: data[index]["appointmentStatus"],
                    );
                  }),
            ),
          ],
        ));
  }
}
