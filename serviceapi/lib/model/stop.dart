class Stop {
  final String code;
  final String name;

  Stop({
    required this.code,
    required this.name,
  });

  factory Stop.fromJson(Map<String, dynamic> json) {
    return Stop(
      code: json['CODI_PARADA'] ?? '',
      name: json['NOM_PARADA'] ?? '',
    );
  }
}