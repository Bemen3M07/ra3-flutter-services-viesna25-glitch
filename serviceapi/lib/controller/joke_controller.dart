import 'package:flutter/material.dart';
import '../model/joke.dart';
import '../service/joke_service.dart';

class JokeController extends ChangeNotifier {
  final JokeService _service = JokeService();

  Joke? currentJoke;
  bool isLoading = false;

  Future<void> loadJoke() async {
    isLoading = true;
    notifyListeners();

    currentJoke = await _service.fetchRandomJoke();

    isLoading = false;
    notifyListeners();
  }
}