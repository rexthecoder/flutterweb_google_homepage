import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';
import 'package:shouldnet/src/componets/const_color.dart';

import 'body.dart';
import 'footer.dart';
import 'nav_bar.dart';

class HomePageDesign extends StatefulWidget {
  const HomePageDesign({
    Key key,
  }) : super(key: key);

  @override
  _HomePageDesignState createState() => _HomePageDesignState();
}

class _HomePageDesignState extends State<HomePageDesign> {
  bool _light = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? lightTheme : darkTheme,
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
        backgroundColor: !_light ? Colors.white : Color(0xff333333),
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 66),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveVisibility(
                      visible: false,
                      visibleWhen: [Condition.equals(name: MOBILE)],
                      child:navContentMobile(_scaffoldKey, _light)),
                  ResponsiveVisibility(
                      replacement: Text(""),
                      visible: true,
                      visibleWhen: [Condition.equals(name: DESKTOP), Condition.equals(name: TABLET)],
                      child: navContent(_light)),
                  Switch(
                      value: _light,
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.black,
                      onChanged: (toggle) {
                        setState(() {
                          _light = toggle;
                          print(_light);
                        });
                      })
                ],
              ),
            )),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            
            children: <Widget>[
              ResponsiveConstraints(child: Body()),

             
              footer(context)
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
