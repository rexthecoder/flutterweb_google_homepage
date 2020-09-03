import 'package:flutter/material.dart';



Widget navBar(GlobalKey<ScaffoldState> _scaffoldKey, bool _light, bool ){
  return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
              _scaffoldKey.currentState.openDrawer();
              },
            ),
             
    
          ],
        ),
      );
}


Widget mainDrawer(){
  return Drawer(
    child: ListTile(),
  );
}
  ThemeData darkTheme = ThemeData(
    accentColor: Colors.white,
    brightness: Brightness.dark,
    primaryColor: Colors.white,
  );

  ThemeData lightTheme = ThemeData(
      accentColor: Colors.black,
      brightness: Brightness.light,
      primaryColor: Colors.black);