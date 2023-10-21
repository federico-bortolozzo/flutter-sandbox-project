import 'package:dio/dio.dart';
import 'package:flutter_sandbox_project/prefrences/model_theme.dart';
import 'package:flutter_sandbox_project/src/network/network_cofig.dart';
import 'package:flutter_sandbox_project/src/network/provider_dio.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/homepage_repository_impl.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/homepage_remote_data_source.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/data/remote/homepage_remote_data_source_impl.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/domain/homepage_repository.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/view_model/homepage_view_model.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
List<SingleChildWidget> HomepageProvider() => [
      networkProvider,
      ProxyProvider2<NetworkConfig, Dio, HomepageRemoteDataSource>(
          update: (context, config, client, _) => HomepageRemoteDataSourceImpl(
                appClient: client,
              )),
      ProxyProvider<HomepageRemoteDataSource, HomepageRepository>(
        update: (context, remoteDataSource, _) => HomepageRepositoryImpl(remoteDataSource: remoteDataSource),
      ),
      ChangeNotifierProxyProvider2<HomepageRepository, ThemeNotifier, HomepageViewModel>(
        create: (context) => HomepageViewModel(),
        update: (context, repository, theme, viewModel) => (viewModel?..inject(repository: repository, themeNotifier: theme)) ?? HomepageViewModel(),
      ),
    ];
