import 'package:flutter/material.dart';
import '../model/bus.dart';
import '../model/line.dart';
import '../service/tmb_service.dart';

class TransportController extends ChangeNotifier {

  final TMBService service = TMBService();

  List<Bus> buses = [];
  List<Line> lines = [];

  bool loading = false;

  Future<void> searchStop(String stopCode) async {

    loading = true;
    notifyListeners();

    buses = await service.getBusesByStop(stopCode);

    loading = false;
    notifyListeners();
  }

  Future<void> loadLines() async {

    loading = true;
    notifyListeners();

    lines = await service.getLines();

    loading = false;
    notifyListeners();
  }
}