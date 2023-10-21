import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/model/character/network_character.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/model/character.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
extension NetworkCharactermapper on NetworkCharacter {
  Character get toDomainModel => Character(
    name: name,
    id: id
  );
}