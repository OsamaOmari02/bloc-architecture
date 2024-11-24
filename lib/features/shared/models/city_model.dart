import 'country_model.dart';

class City {
  final String id;
  final String nameEn;
  final String nameAr;
  final Country country;

  City({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.country,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['_id'],
      nameEn: json['nameEn'],
      nameAr: json['nameAr'],
      country: Country.fromJson(json['country']),
    );
  }
}
