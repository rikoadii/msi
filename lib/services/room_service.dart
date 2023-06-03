import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_msi/models/room_model.dart';


class room_service {
  static const baseUrl = "http://localhost:3000/room/";
  Future<List<Room_Model>> fetchRoom_Model() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      final body = response.body;
      final result = jsonDecode(body);
      List<Room_Model> rooms = List<Room_Model>.from(
        result['data'].map(
          (room) => Room_Model.fromJson(room),
        ),
      );
      return rooms;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}


