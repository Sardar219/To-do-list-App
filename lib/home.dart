
import 'package:flutter/material.dart';
import '../Model/todo.dart';
import 'package:flutter_first/appbar.dart';
import 'package:flutter_first/color/color.dart';
import 'package:flutter_first/wigdet/todo_item.dart';

class Home extends StatefulWidget {
  Home({Key? key}):super(key:key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: BuildAppbar(),
      drawer: Drawer(),
      body: Stack(
    children:[
      Container(
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
                  for( Todo todo in todosList)
                    Todo_Item(todo: todo,
                    onTodoChange: _handleTodoChanges,
                      onTodoDelete: (){},
                    ),


                ],
              ),
            )
          ],
        ),
      ),
      Align(
        alignment:Alignment.bottomCenter,
        child:Row(
            children:[
              Expanded(
                child:Container(
                  margin:EdgeInsets.only(bottom:20,right:8,left:20),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const[BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0,0.0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    )],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Add new to-do item",
                      border: InputBorder.none
                    ),
                  ),

          )),
              Container(
                margin: EdgeInsets.only(bottom: 20,right: 20),
                child: ElevatedButton(
                  child: Text("+",style: TextStyle(fontSize: 40,color: Colors.white),),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdBlue,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
              )
        ])
      )
    ],
      ),
    );
  }
  void _handleTodoChanges(Todo todo){
    setState(() {
      todo.isDone=!todo.isDone;
    });
  }
  void _deleteTodoItem(String id){
    todosList.remove((item)=>item.id==id)
  }
}



