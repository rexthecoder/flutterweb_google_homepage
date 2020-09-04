import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget navBar(GlobalKey<ScaffoldState> _scaffoldKey, bool _light, bool) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [],
    ),
  );
}

// Widget navBtn() {
//     return Row(
//       children: [
//           Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
//         SizedBox(
//           width: 10,
//         ),
//         btnDesign(
//             text: Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
//             elevation: 15,
//             color: Colors.blue),
//         SizedBox(
//           width: 8.0,
//         ),
//       ],
//     );
//   }

Widget navBtnMobile() {
  return Row(
    children: [
      // btnDesign(
      //     text: Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
      //     elevation: 15,
      //     color: Colors.blue),
    ],
  );
}

Row navContent(_light) {
  return Row(
    children: [
      ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.equals(name: DESKTOP),
          Condition.equals(name: TABLET)
        ],
        child: Row(
          children: [
            Text("Home",
                style: TextStyle(
                    color: !_light ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
            SizedBox(
              width: 40,
            ),
            Text("Pricing",
                style: TextStyle(
                    color: !_light ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
            SizedBox(
              width: 40,
            ),
            Text("Product",
                style: TextStyle(
                    color: !_light ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
            SizedBox(
              width: 40,
            ),
            Text("Contact us",
                style: TextStyle(
                    color: !_light ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
          ],
        ),
      ),
    ],
  );
}

Row navContentMobile(GlobalKey<ScaffoldState> _scaffoldKey, _light) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      IconButton(
        icon: Icon(
          Icons.menu,
          color: !_light ? Colors.black : Colors.white,
        ),
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
    ],
  );
}

Widget btnDesign({Widget text, Color color, double elevation}) => RaisedButton(
      onPressed: () {},
      color: color,
      child: text,
      elevation: elevation,
    );
Widget mainDrawer() {
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
