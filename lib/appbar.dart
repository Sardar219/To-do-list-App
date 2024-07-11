import 'package:flutter/material.dart';
import 'package:flutter_first/color/color.dart';

AppBar BuildAppbar() {
  return AppBar(
    backgroundColor: tdBGColor,
    title:Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset("assets/images/logo.HEIC",width: 40,),
      ),
      alignment: Alignment.centerRight,
    ),
    elevation: 0,

  );
}

Widget seachBox(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child:
    TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search,color: tdBlack, size: 20,),
          prefixIconConstraints: BoxConstraints(
            // maxHeight: 20,
            // minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: tdGrey)
      ),
    ),
  );

}