import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';
import 'package:shouldnet/src/componets/block.dart';
import 'package:shouldnet/src/componets/const_color.dart';
import 'package:shouldnet/src/view/homepage/body.dart';
import 'header.dart';
import 'nav_bar.dart';

class HomePageDesign extends StatefulWidget {
  const HomePageDesign({
    Key key,
  }) : super(key: key);

  @override
  _HomePageDesignState createState() => _HomePageDesignState();
}

class _HomePageDesignState extends State<HomePageDesign> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: AppColor.backgroundColor)),
      home: Scaffold(
        drawer: mainDrawer(),
        key: _scaffoldKey,
        backgroundColor: AppColor.backgroundColor,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 66),
            child: navBar(_scaffoldKey)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ResponsiveWrapper(
                  maxWidth: 1200,
                  minWidth: 1200,
                  defaultScale: true,
                  mediaQueryData: MediaQueryData(size: Size(1200, 640)),
                  child: ResponsiveConstraints(
                    child: Header())),

              ResponsiveConstraints(
                  constraintsWhen: blockWidthConstraints, child: Body()),
              // ResponsiveConstraints(
              //     constraintsWhen: blockWidthConstraints, child: Section4()),
              // Footer()
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
