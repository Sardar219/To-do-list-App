
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/appbar.dart';
import 'package:flutter_first/color/color.dart';
import 'package:flutter_first/wigdet/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: BuildAppbar(),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Column(
          children: [
            seachBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom: 20),
                    child: Text("All ToDo",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  ),
                  Todo(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
