class Todo{
  String? id;
  String? todoText;
  bool isDone;
  Todo({
    required this.id,required this.todoText,this.isDone=false
  });
  static List<Todo> todoList(){
    return[
      Todo(id: "01", todoText: "Prey Allah",isDone: true),
      Todo(id: "02", todoText: "Eat Beackfast",isDone: true),
      Todo(id: "03", todoText: "Read Lesson"),
      Todo(id: "04", todoText: "Check Mail"),
      Todo(id: "05", todoText: "Go to University",isDone: true),
      Todo(id: "06", todoText: "See the Teacher"),
      Todo(id: "07", todoText: "Go to Office",isDone: true),
      Todo(id: "08", todoText: "push in Github",isDone: true),
      Todo(id: "09", todoText: "Work on the app",isDone: true),
    ];
  }
}