import 'dart:convert';

import 'package:reminder_app/models/user.dart';
import 'package:http/http.dart' as http;


class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));
    print('API Response status: ${response.statusCode}'); 

    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      print('API Response body: $body'); 
      List<User> users =
          body.map((dynamic item) => User.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load users....');
    }
  }
}
