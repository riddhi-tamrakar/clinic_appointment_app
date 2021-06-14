import 'dart:convert';

import 'package:app/src/services/utility.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/custom_card_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BudgetChart extends StatefulWidget {
  @override
  _BudgetChartPageState createState() => _BudgetChartPageState();
}

class GraphModel {
  final String appointment;
  final double graphData;
  final charts.Color color;

  GraphModel(this.appointment, this.graphData, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class Data {
  final String field;
  final int value;
  final charts.Color color;

  //  Data(this.field, this.value, Color color)
  //     : this.color = charts.Color.fromHex(code: '#f2f2f2');
  Data(this.field, this.value, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _BudgetChartPageState extends State<BudgetChart> {
  var data = [];

  void initState() {
    super.initState();
  }

  Color colorConvert(String color) {
    var converted;
    converted = Color(int.parse("0xff" + color));
    return converted;
  }

  String calculateInPercent(String amt, String amt1) {
    int temp = double.parse(amt).toInt();

    int total = double.parse(amt1).toInt();
    double percent;
    percent = (temp * 100) / total;
    print((percent).toString());
    return percent.toString();
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      GraphModel('Teleconsulation', 30.9, Colors.red),
      GraphModel('Walk-in', 23.6, Colors.purple),
      GraphModel('Cancelled', 3.6, Colors.pink[300]),
      GraphModel('Follow up', 23.6, Colors.yellow),
      GraphModel('Pre Scheduled', 18.2, Colors.blue),
    ];

    var series = [
      charts.Series(
        domainFn: (GraphModel clickData, _) => clickData.appointment,
        measureFn: (GraphModel clickData, _) => clickData.graphData,
        colorFn: (GraphModel clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
        labelAccessorFn: (GraphModel clickData, _) =>
            '${clickData.graphData}\%',
      ),
    ];

    var chart = charts.PieChart(
      series,
      animate: true,
      behaviors: [
        new charts.DatumLegend(
            outsideJustification: charts.OutsideJustification.endDrawArea,
            horizontalFirst: false,
            showMeasures: true,
            legendDefaultMeasure: charts.LegendDefaultMeasure.none,
            position: charts.BehaviorPosition.bottom,
            desiredMaxRows: 2,
            cellPadding: EdgeInsets.all(Utility.displayWidth(context) * 0.006),
            entryTextStyle: charts.TextStyleSpec(
              color: charts.MaterialPalette.black,
              fontSize: 13,
            )),
      ],
      selectionModels: [
        new charts.SelectionModelConfig(changedListener: (selectionModel) {}),
      ],
      defaultRenderer:
          new charts.ArcRendererConfig(arcWidth: 60, arcRendererDecorators: [
        new charts.ArcLabelDecorator(
          labelPosition: charts.ArcLabelPosition.inside,
          showLeaderLines: true,
        )
      ]),
    );

    var chartWidget = Container(
      child: SizedBox(
        height: 350,
        child: chart,
      ),
    );

    return Padding(
      padding: EdgeInsets.all(AppTheme.kBodyPadding),
      child: CustomCard(
          child: Column(
        children: [chartWidget, SpacerWidget(AppTheme.kBodyPadding)],
      )),
    );
  }
}
