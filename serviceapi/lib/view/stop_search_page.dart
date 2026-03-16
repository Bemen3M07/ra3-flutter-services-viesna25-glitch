import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/transport_controller.dart';

class StopSearchPage extends StatelessWidget {

  final TextEditingController controller = TextEditingController();

  StopSearchPage({super.key});

  @override
  Widget build(BuildContext context) {

    final transport = Provider.of<TransportController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Buscar parada")),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Codi de parada",
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              transport.searchStop(controller.text);
            },
            child: const Text("Buscar autobusos"),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: transport.buses.length,
              itemBuilder: (context, index) {

                final bus = transport.buses[index];

                return ListTile(
                  title: Text("Línia ${bus.line}"),
                  subtitle: Text(bus.destination),
                  trailing: Text(bus.time),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}