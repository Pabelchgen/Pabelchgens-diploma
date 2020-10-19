import 'dart:convert';

class PetModel {
  String species;
  String race;
  String name;
  String birthDate;
  PetModel({
    this.species,
    this.race,
    this.name,
    this.birthDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'species': species,
      'race': race,
      'name': name,
      'birthDate': birthDate,
    };
  }

  factory PetModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PetModel(
      species: map['species'],
      race: map['race'],
      name: map['name'],
      birthDate: map['birthDate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PetModel.fromJson(String source) =>
      PetModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PetModel(species: $species, race: $race, name: $name, birthDate: $birthDate)';
  }
}
