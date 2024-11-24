class Country {
  final String id;
  final String nameAr;
  final String nameEn;

  Country({
    required this.id,
    required this.nameAr,
    required this.nameEn,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['_id'],
      nameAr: json['nameAr'],
      nameEn: json['nameEn'],
    );
  }
}
