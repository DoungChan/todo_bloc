import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';

class NetworkService {
  final baseurl = "http://localhost:8000";
  Future<List<dynamic>> fetchTodos() async {
    try {
      final response = await get(Uri.parse(baseurl + "/todos"));
      print(response.body);
      return jsonDecode(response.body) as List;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<bool> patchTodo(Map<String, String> patchObj, int id) async {
    try {
      await patch(Uri.parse(baseurl + "/todos/$id"), body: patchObj);
      return true;
    } catch (e) {
      return false;
    }
  }
}
