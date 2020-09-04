import 'package:flutter/material.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';

Widget footer(BuildContext context) {
  return Container(
    width: double.infinity,
    
    child: Column(
      children: [
         SizedBox(
          height: 300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            IconButton(icon: Icon(IconMoon.icon_facebook,color: Colors.blue,),onPressed: (){},),
              IconButton(icon: Icon(IconMoon.icon_whatsapp,color:Color(0xff25d366),),onPressed: (){},),
               IconButton(icon: Icon(IconMoon.icon_twitter,color: Color(0xff1da1f2),),onPressed: (){},),
               IconButton(icon: Icon(IconMoon.icon_instagram,color: Color(0xffe4405f),),onPressed: (){},),
          ],
        ),
      ],
    ),
  );
}
