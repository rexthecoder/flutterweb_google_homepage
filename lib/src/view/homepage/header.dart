import 'package:flutter/material.dart';
import 'package:shouldnet/src/componets/const_color.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,

          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 200),
          child: RichText(
              text: TextSpan(
                  text: "G",
                  style: TextStyle(fontSize: 120, color: AppColor.blueColor),
                  children: [
                TextSpan(
                  text: "o",
                  style: TextStyle(fontSize: 70, color: AppColor.redColor),
                ),
                TextSpan(
                  text: "o",
                  style: TextStyle(fontSize: 70, color: Colors.yellow),
                ),
                TextSpan(
                  text: "g",
                  style: TextStyle(fontSize: 70, color: AppColor.blueColor),
                ),
                TextSpan(
                  text: "l",
                  style: TextStyle(fontSize: 70, color: AppColor.greenColor),
                ),
                TextSpan(
                  text: "e",
                  style: TextStyle(fontSize: 70, color: AppColor.redColor),
                )
              ])),
          // padding: EdgeInsets.only(top: 200,left: 250),
        ),
        Container(
         height: 50,
         
          margin: EdgeInsets.only(left:250,right:250),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(50)

          )
          ,
          child: TextField(
            
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left:30)
            ),
          ),)
      ],
    );
  }
}
