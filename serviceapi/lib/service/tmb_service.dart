import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/bus.dart';
import '../model/line.dart';

class TMBService {

  final String appId = "8d73b107";
  final String appKey = "5787ca8002f0e78b77890b7f003839b3";

  final String baseUrl = "https://api.tmb.cat/v1";

  Future<List<Bus>> getBusesByStop(String stopCode) async {

    final url =
        "$baseUrl/ibus/stops/$stopCode?app_id=$appId&app_key=$appKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      final data = json.decode(response.body);

      List buses = data["data"]["ibus"];

      return buses.map((bus) => Bus.fromJson(bus)).toList();

    } else {
      throw Exception("Error carregant autobusos");
    }
  }

  Future<List<Line>> getLines() async {

    final url =
        "$baseUrl/transit/linies/bus?app_id=$appId&app_key=$appKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      final data = json.decode(response.body);

      List lines = data["data"];

      return lines.map((line) => Line.fromJson(line)).toList();

    } else {
      throw Exception("Error carregant línies");
    }
  }
}