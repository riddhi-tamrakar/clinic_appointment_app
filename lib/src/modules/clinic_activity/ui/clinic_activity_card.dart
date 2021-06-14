import 'package:app/src/services/utility.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/common_button_widget.dart';
import 'package:app/src/widgets/custom_card_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';

class ClinicCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String value;
  ClinicCardWidget({Key key, this.title, this.subTitle, this.value})
      : super(key: key);

  Widget _customChip(BuildContext context, text) => new Container(
        padding: EdgeInsets.all(5),
        decoration: new BoxDecoration(
          color: AppTheme.kShimmerBaseColor.withOpacity(0.3),
          borderRadius: new BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('$text',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppTheme.kPrimaryColor)),
        ),
      );
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      // width: Utility.displayWidth(context) * 0.43,
      child: CustomCard(
          child: Container(
        padding: const EdgeInsets.all(AppTheme.kBodyPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _customChip(context, title),
            SpacerWidget(AppTheme.kBodyPadding),
            Text(value,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 35)),
            SpacerWidget(AppTheme.kBodyPadding),
            Text(subTitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 13)),
          ],
        ),
      )),
    );
  }
}
