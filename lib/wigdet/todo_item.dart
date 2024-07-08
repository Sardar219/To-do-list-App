import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/Model/todo.dart';
import 'package:flutter_first/color/color.dart';

class Todo_Item extends StatelessWidget {
  final Todo todo;
  const Todo_Item({Key? key, required this.todo}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      child: ListTile(
        onTap: (){
          print("List Tile");
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box,color: tdBlue,),
        title: Text(todo.todoText!,style: TextStyle(fontSize: 20,color: tdBlack,decoration: TextDecoration.lineThrough),),
        trailing: Container(
          width: 35,
          height: 35,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){
              print("Yes Its work!!!");
            },
          ),
        ),
      )
    );
  }
}
