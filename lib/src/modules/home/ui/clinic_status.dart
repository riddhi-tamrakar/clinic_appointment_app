import 'package:app/src/modules/clinic_activity/ui/clinic_status_chart.dart';
import 'package:app/src/modules/home/ui/bottom_nav_bar_widget.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  int currentIndex = 0;

  Widget _searchBar() => Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(AppTheme.kBodyPadding),
      child: SizedBox(
        height: 50,
        child: Center(
          child: TextField(
              onTap: () {},
              autocorrect: true,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                    ),
                    onPressed: () {}),
                hintText: "Search Patient",
                hintStyle: TextStyle(color: Colors.grey),
              )),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: AppTheme.kAppBarHeight,
                floating: false,
                pinned: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: _searchBar(),
                )),
          ];
        },
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(AppTheme.kBodyPadding),
            child: HeadingWidget(
              title: 'Clinic Status',
            ),
          ),
          BudgetChart()
        ]),
      ),
    );
  }
}
