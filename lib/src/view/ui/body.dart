import 'package:flutter/material.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';
import 'package:shouldnet/src/componets/const_color.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.black,
          width: double.infinity,

          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 200),
          child: RichText(
              text: TextSpan(
                  text: "S",
                  style: TextStyle(fontSize: 80, color: AppColor.blueColor),
                  children: [
                TextSpan(
                  text: "h",
                  style: TextStyle(fontSize: 60, color: AppColor.redColor),
                ),
                TextSpan(
                  text: "o",
                  style: TextStyle(fontSize: 60, color: Colors.yellow),
                ),
                TextSpan(
                  text: "u",
                  style: TextStyle(fontSize: 60, color: AppColor.greenColor),
                ),
                TextSpan(
                  text: "l",
                  style: TextStyle(fontSize: 60, color: AppColor.blueColor),
                ),
                TextSpan(
                  text: "d",
                  style: TextStyle(fontSize: 60, color: AppColor.greenColor),
                ),
                TextSpan(
                  text: "n",
                  style: TextStyle(fontSize: 60, color: AppColor.redColor),
                ),
                TextSpan(
                  text: "e",
                  style: TextStyle(fontSize: 60, color: Colors.yellow),
                ),
                TextSpan(
                  text: "t",
                  style: TextStyle(fontSize: 60, color: AppColor.greenColor),
                ),
                TextSpan(
                  text: "-?",
                  style: TextStyle(fontSize: 60, color: AppColor.redColor),
                ),
              ])),
          // padding: EdgeInsets.only(top: 200,left: 250),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(

              color: Colors.white,
              border: Border.all(color: Color(0xffE3E3E3)),
              borderRadius: BorderRadius.circular(50)),
          child: TextField(
            focusNode: FocusNode(),
            
            controller: _input,
            decoration: InputDecoration(

                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10.0,top:5.0),

                  child: Icon(
                    Icons.search,
                    color: Color(0xffE3E3E3),
                  ),
                ),
                border: InputBorder.none,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(IconMoon.icon_microphone),
                ),
               
                suffix:  InkWell(
                  onTap: (){
                    _input.clear();
                    
                  },
                  child: Icon(IconMoon.icon_close,size: 18,)),
                contentPadding: EdgeInsets.only(left: 60,top:15.0)),
          ),
        )
      ],
    );
  }
}
