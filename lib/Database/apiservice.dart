import 'package:http/http.dart' as http;

import 'package:shoppingappwithjsonserver/Model/fruitmodel.dart';

class ApiService {
  static var client = http.Client();
  static Future<List<Fruit>> fetchProduct() async {
    var response = await client.get(Uri.parse('http://localhost:3000/fruits'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return fruitFromJson(jsonString);
    } else {
      return throw Exception('Failed to load posts');
    }
  }
}
