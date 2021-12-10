class Model {
  String todoMessage;
  bool isCompleted;
  int id;

  Model.fromJson(Map json)
      : todoMessage = json["todo"],
        isCompleted = json["isCompleted"] == "true",
        id = json["id"] as int;
}
