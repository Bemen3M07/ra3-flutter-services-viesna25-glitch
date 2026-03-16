class Bus {
  final String line;
  final String destination;
  final String time;

  Bus({
    required this.line,
    required this.destination,
    required this.time,
  });

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      line: json['line'] ?? '',
      destination: json['destination'] ?? '',
      time: json['text-ca'] ?? '',
    );
  }
}