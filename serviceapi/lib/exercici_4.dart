import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/transport_controller.dart';
import 'view/stop_search_page.dart';

void main() {
  runApp(const TransportApp());
}

class TransportApp extends StatelessWidget {
  const TransportApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => TransportController(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StopSearchPage(),
      ),
    );
  }
}