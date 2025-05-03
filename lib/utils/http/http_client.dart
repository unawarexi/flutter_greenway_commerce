import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl =
      "https://your-api-url.com"; // Replace with your actual API URL

  // Helper method to handle the HTTP response
  static Future<dynamic> _handleResponse(http.Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Parse JSON if the response is successful
      return jsonDecode(response.body);
    } else {
      // Throw an exception if the response is not successful
      throw Exception(
          'Failed with status code: ${response.statusCode}, Response: ${response.body}');
    }
  }

  // GET request
  static Future<dynamic> getRequest(String endpoint,
      {Map<String, String>? headers}) async {
    final url = '$_baseUrl$endpoint';

    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('GET request failed: $e');
    }
  }

  // POST request
  static Future<dynamic> postRequest(String endpoint, Map<String, dynamic> data,
      {Map<String, String>? headers}) async {
    final url = '$_baseUrl$endpoint';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers ?? {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('POST request failed: $e');
    }
  }

  // PUT request
  static Future<dynamic> putRequest(String endpoint, Map<String, dynamic> data,
      {Map<String, String>? headers}) async {
    final url = '$_baseUrl$endpoint';

    try {
      final response = await http.put(
        Uri.parse(url),
        headers: headers ?? {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('PUT request failed: $e');
    }
  }

  // DELETE request
  static Future<dynamic> deleteRequest(String endpoint,
      {Map<String, String>? headers}) async {
    final url = '$_baseUrl$endpoint';

    try {
      final response = await http.delete(Uri.parse(url), headers: headers);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('DELETE request failed: $e');
    }
  }
}
