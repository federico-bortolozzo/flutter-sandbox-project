
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/homepage_remote_data_source.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/homepage_repository.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/model/character.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class HomepageRepositoryImpl extends HomepageRepository {
  final HomepageRemoteDataSource _remoteDataSource;

  HomepageRepositoryImpl({
    required HomepageRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<Character?> getCharacterById(int id) async =>_remoteDataSource.getCharacterById(id);
}
