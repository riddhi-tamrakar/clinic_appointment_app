import 'package:app/src/services/utility.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/common_button_widget.dart';
import 'package:app/src/widgets/custom_card_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  Widget _horizontalLine(BuildContext context) => Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(AppTheme.kBorderRadius)),
        height: 0.5,
        width: Utility.displayWidth(context),
      );

  Widget _customChip(BuildContext context, text) => new Container(
        padding: EdgeInsets.all(5),
        decoration: new BoxDecoration(
          color: Color(0xffDCFAF0),
          borderRadius: new BorderRadius.circular(AppTheme.kBorderRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('$text', style: Theme.of(context).textTheme.caption),
        ),
      );
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.only(right: AppTheme.kBodyPadding),
      width: Utility.displayWidth(context) * 0.83,
      child: CustomCard(
          child: Container(
        padding: const EdgeInsets.all(AppTheme.kBodyPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                _customChip(context, 'Paid'),
                SpacerWidget(AppTheme.kBodyPadding * 0.5),
                _customChip(context, 'Confirmed'),
              ],
            ),
            SpacerWidget(AppTheme.kBodyPadding),
            Row(
              children: [
                Expanded(
                    child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'John Doe',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Female',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.subtitle1),
                          SpacerWidget(5),
                          Icon(
                            Icons.circle,
                            size: 8,
                          ),
                          SpacerWidget(5),
                          Text('25 Yrs',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.subtitle1),
                        ],
                      )),
                )),
                Expanded(
                    child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Jun 15',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(fontWeight: FontWeight.w600)),
                      SpacerWidget(5),
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      SpacerWidget(5),
                      Text('2.30 PM',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(fontWeight: FontWeight.w600)),
                    ],
                  ),
                  subtitle: Text('Last visit on 16/1/20',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle1),
                )),
              ],
            ),
            _horizontalLine(context),
            SpacerWidget(AppTheme.kBodyPadding),
            Row(
              children: [
                CommonButtonWidget(
                  buttonText: 'Rx',
                  bgColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).colorScheme.onPrimary,
                ),
                SpacerWidget(AppTheme.kBodyPadding),
                CommonButtonWidget(
                  buttonText: 'SMS',
                ),
                SpacerWidget(AppTheme.kBodyPadding),
                CommonButtonWidget(
                  buttonText: 'Video',
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
