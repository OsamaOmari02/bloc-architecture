class SubCity {
  final String id;
  final String nameAr;
  final String nameEn;

  SubCity({
    required this.id,
    required this.nameAr,
    required this.nameEn,
  });

  factory SubCity.fromJson(Map<String, dynamic> json) {
    return SubCity(
      id: json['_id'],
      nameAr: json['nameAr'],
      nameEn: json['nameEn'],
    );
  }
}
