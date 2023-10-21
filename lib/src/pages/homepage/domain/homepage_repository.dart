import 'package:flutter_sandbox_project/src/pages/homepage/domain/model/character.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
abstract class HomepageRepository {
  Future<Character?> getCharacterById(int id);
}
