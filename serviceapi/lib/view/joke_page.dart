import 'package:flutter/material.dart';
import '../controller/joke_controller.dart';
import 'package:provider/provider.dart';

class JokePage extends StatelessWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<JokeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Acudit aleatori"),
      ),
      body: Center(
        child: controller.isLoading
            ? const CircularProgressIndicator()
            : controller.currentJoke == null
                ? const Text("Prem el botó per carregar un acudit")
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.currentJoke!.setup,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          controller.currentJoke!.punchline,
                          style: const TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.loadJoke();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}