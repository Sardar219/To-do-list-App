import 'package:flutter/material.dart';
import 'package:flutter_first/color/color.dart';

AppBar BuildAppbar() {
  return AppBar(
    backgroundColor: tdBGColor,
    title:Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset("assets/images/Daily Work.png",width: 40,),
      ),
      alignment: Alignment.centerRight,
    ),
    elevation: 0,

  );
}