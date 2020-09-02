import 'package:flutter/material.dart';



Widget navBar(GlobalKey<ScaffoldState> _scaffoldKey){
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