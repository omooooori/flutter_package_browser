import 'dart:convert';
import 'package:http/http.dart' as http;

class PubApiClient {
  final _baseUrl = 'https://pub.dev';

  Future<Map<String, dynamic>> get(String path) async {
    final response = await http.get(Uri.parse('$_baseUrl$path'));

    if (response.statusCode != 200) {
      throw Exception('Request failed: $path');
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
