import 'package:dio/dio.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/extension/character/network_character.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/homepage_remote_data_source.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/model/character/network_character.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/model/character.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class HomepageRemoteDataSourceImpl extends HomepageRemoteDataSource {
  static const _getCharacterPath = '/character/';

  final Dio _appClient;

  HomepageRemoteDataSourceImpl({required Dio appClient}) : _appClient = appClient;

  @override
  Future<Character?> getCharacterById(int id) async {
    try {
      final Response<dynamic> response = await _appClient.get("${_getCharacterPath}$id");
      var networkChar = NetworkCharacter.fromJson(response.data);
      return networkChar.toDomainModel;
    } on DioException catch (exception) {
      print(exception.response.toString());
    }
    return null;
  }
}
