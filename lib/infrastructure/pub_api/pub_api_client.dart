import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final pubApiClientProvider = Provider<PubApiClient>((ref) {
  return PubApiClient();
});

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
