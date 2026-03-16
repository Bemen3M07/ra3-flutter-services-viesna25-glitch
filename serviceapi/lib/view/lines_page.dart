import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/transport_controller.dart';

class LinesPage extends StatelessWidget {

  const LinesPage({super.key});

  @override
  Widget build(BuildContext context) {

    final transport = Provider.of<TransportController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Línies d'autobús")),

      body: ListView.builder(
        itemCount: transport.lines.length,
        itemBuilder: (context, index) {

          final line = transport.lines[index];

          return ListTile(
            title: Text(line.code),
            subtitle: Text(line.name),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          transport.loadLines();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}