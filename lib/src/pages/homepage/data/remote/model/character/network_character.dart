import 'package:json_annotation/json_annotation.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
part 'network_character.g.dart';
@JsonSerializable()
class NetworkCharacter {
  int id;
  String name;

  NetworkCharacter({required this.name, required this.id});

  factory NetworkCharacter.fromJson(Map<String, dynamic> json) =>
      _$NetworkCharacterFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkCharacterToJson(this);

}