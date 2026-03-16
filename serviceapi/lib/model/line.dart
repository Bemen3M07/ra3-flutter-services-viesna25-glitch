class Line {
  final String code;
  final String name;

  Line({
    required this.code,
    required this.name,
  });

  factory Line.fromJson(Map<String, dynamic> json) {
    return Line(
      code: json['CODI_LINIA'] ?? '',
      name: json['NOM_LINIA'] ?? '',
    );
  }
}