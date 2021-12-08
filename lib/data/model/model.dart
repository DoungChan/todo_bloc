class Model {
  String? todoMessage;
  String? isCompleted;
  int? id;

  Model.fromJson(Map json)
      : todoMessage = json["todo"],
        isCompleted = json["isCompleted"],
        id = json["id"] as int;
}
