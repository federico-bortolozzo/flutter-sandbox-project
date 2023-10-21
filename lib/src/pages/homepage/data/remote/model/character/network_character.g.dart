// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkCharacter _$NetworkCharacterFromJson(Map<String, dynamic> json) =>
    NetworkCharacter(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$NetworkCharacterToJson(NetworkCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
