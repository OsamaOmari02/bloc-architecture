

class ModelName {
  ModelName({
    required this.name,
  });

  final String name;

  factory ModelName.fromJson(Map<String, dynamic> json) => ModelName(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
