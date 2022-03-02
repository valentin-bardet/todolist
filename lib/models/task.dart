class Task {
  int id;
  bool completed;
  String content;
  DateTime? createdAt;

  // Constructor, with syntactic sugar for assignment to members.
  Task(this.id, this.completed, this.content, this.createdAt) {
    // Initialization code goes here.
  }

  // Method.
  void describe() {
    print('Id: $id');
    print('Completed: $completed');
    print('content: $content');
    print('date: $createdAt');
  }
}
