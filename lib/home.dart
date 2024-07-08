import 'package:flutter/material.dart';
import 'package:flutter_first/color/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Container(
          child: Image.asset("assets/images/logo.HEIC",width: 50,),
        )
      ),
      drawer: Drawer(),
    );
  }
}
