class Task {
  final int id;
  final String title;
  final String description;
  Task({this.id = 000000, this.title = "Empty", this.description = "Empty"});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
    };
  }
}
