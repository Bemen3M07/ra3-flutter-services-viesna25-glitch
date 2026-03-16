import 'package:http/http.dart' as http;
import 'package:serviceapi/model/rentcar.dart';

class CarHttpService {
  final String _url = "https://car-data.p.rapidapi.com";
  final String _apiKey = "879be99e64msh1c5071fd3d64f96p154acajsn13d8306f51d2";

  Future<List<CarsModel>> getCars() async {
    var uri = Uri.parse("$_url/cars");

    var response = await http.get(
      uri,
      headers: {
        "X-RapidAPI-Key": _apiKey,
        "X-RapidAPI-Host": "car-data.p.rapidapi.com",
      },
    );

    print("STATUS: ${response.statusCode}");
    print("BODY: ${response.body}");

    if (response.statusCode == 200) {
      return carsModelFromJson(response.body);
    } else {
      throw Exception(
          "Error ${response.statusCode}: ${response.body}");
    }
  }
}