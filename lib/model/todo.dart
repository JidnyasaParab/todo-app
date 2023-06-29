class ToDo {
  String id;
  String todoTitle;
  String todoDescription;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoTitle,
    required this.todoDescription,
    this.isDone = false,
  });
}
