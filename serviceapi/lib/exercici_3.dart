import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/joke_controller.dart';
import 'view/joke_page.dart';

void main() {
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => JokeController(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JokePage(),
      ),
    );
  }
}