import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../model/joke.dart';

class JokeService {
  final String url = "https://api.sampleapis.com/jokes/goodJokes";

  Future<Joke> fetchRandomJoke() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);

      final random = Random();
      final randomJoke = data[random.nextInt(data.length)];

      return Joke.fromJson(randomJoke);
    } else {
      throw Exception("Error carregant acudits");
    }
  }
}