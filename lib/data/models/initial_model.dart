import 'dart:convert';

import 'package:bloc_architecture/data/entites/initial_entity.dart';

class ModelName extends EntityName {
  ModelName({
    required super.name,
  });

  factory ModelName.fromJson(String jsonString) {
    final jsonData = json.decode(jsonString);
    return ModelName(
      name: jsonData['name'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }
}
