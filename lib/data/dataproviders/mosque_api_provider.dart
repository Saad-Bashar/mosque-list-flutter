import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MosqueApiProvider {
  Future<List<dynamic>> fetchMosques() async {
    final baseUrl = dotenv.get('API_URL');
    final response = await http.get(Uri.parse(
        "$baseUrl?action=nearby_mosques&max_results=20&lat=-33.865143&lon=151.2099"));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load mosques');
    }
  }
}
