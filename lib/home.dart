
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
  List<Todo> _foundToDo=[];
  final _todoController=TextEditingController();

  @override
  void initState() {
    _foundToDo=todosList;
    super.initState();
  }
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
                  for( Todo todo in _foundToDo)
                    Todo_Item(todo: todo,
                    onTodoChange: _handleTodoChanges,
                      onTodoDelete: _deleteTodoItem,
                    ),
                ],
              ),
            ),
            SizedBox(height: 65,)
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
                    controller: _todoController,
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
                  onPressed: (){
                    _addTodoItem(_todoController.text);
                  },
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
  Widget seachBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child:
      TextField(
        onChanged:(value) => _runFilter(value),
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
  void _handleTodoChanges(Todo todo){
    setState(() {
      todo.isDone=!todo.isDone;
    });
  }
  void _deleteTodoItem(String id){
    setState(() {
      todosList.removeWhere((item)=>item.id==id);
    });
  }
  void _addTodoItem(String toDo){
    setState(() {
      todosList.add(Todo(id: DateTime.now().microsecondsSinceEpoch.toString(), todoText: toDo));
    });
    _todoController.clear();
  }
  void _runFilter(String enteredKeyword){
    List<Todo> result= [];
    if(enteredKeyword.isEmpty){
      result=todosList;
    }else{
      result=todosList.where((item) => item.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }
    setState(() {
      _foundToDo=result;
    });
  }
}



