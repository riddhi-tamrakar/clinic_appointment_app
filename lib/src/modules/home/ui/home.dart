import 'package:app/src/modules/appontments/ui/appointment_carousel_page.dart';
import 'package:app/src/modules/clinic_activity/ui/clinic_activity_gridView.dart';
import 'package:app/src/modules/clinic_activity/ui/clinic_status_chart.dart';
import 'package:app/src/modules/home/ui/bottom_nav_bar_widget.dart';
import 'package:app/src/services/utility.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/widgets/heading_widget.dart';
import 'package:app/src/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int currentIndex = 0;

  // FABBottomAppBar _bottomAppBar() => FABBottomAppBar(
  //       color: Colors.grey,
  //       selectedColor: Theme.of(context).primaryColor,
  //       currentIndex: currentIndex,
  //       notchedShape: CircularNotchedRectangle(),
  //       onTabSelected: (int i) {},
  //       items: [
  //         FABBottomAppBarItem(
  //           iconData: Icons.menu,
  //         ),
  //         FABBottomAppBarItem(
  //           iconData: Icons.line_style,
  //         ),
  //       ],
  //     );

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
      // bottomNavigationBar: _bottomAppBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.upload_file),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          AppointmentCarouselPage(),
          Expanded(child: ClinicActivityGridViewPage()),
        ]),
      ),
    );
  }
}
