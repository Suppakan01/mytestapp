import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {
  final String apiUrl =
      "https://api.waqi.info/feed/bangkok/?token=85fa07006cb2caab56674083379872e93f0536d9";

  Future<Map<String, dynamic>> fetchAQI() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      var data = jsonData["data"];
      return {
        "city": data["city"]["name"],
        "aqi": data["aqi"],
        "temperature": data["iaqi"]["t"]["v"]
      };
    } else {
      throw Exception("Failed to load AQI data");
    }
  }
}
