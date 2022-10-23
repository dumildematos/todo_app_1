class Todo {
  String _title;
  String _description;
  bool _isFinished;

  Todo.name({
    required bool isFinished,
    required String title,
    required String description
  }) : _title = title,
      _description = description,
      _isFinished = isFinished;

  bool get isFinished => _isFinished;

  set isFinished(bool value) {
    _isFinished = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}