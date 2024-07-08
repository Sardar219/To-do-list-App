
import 'package:flutter/material.dart';
import 'package:flutter_first/appbar.dart';
import 'package:flutter_first/color/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: BuildAppbar(),
      drawer: Drawer(),
      body: Container(
        child: Text("sddd"),
      ),
    );
  }


}
