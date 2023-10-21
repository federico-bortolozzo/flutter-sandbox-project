import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_sandbox_project/src/network/network_cofig.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
Dio _dio({required NetworkConfig networkConfig, required List<Interceptor> interceptors}) {
  final dio = Dio(_baseOptions(networkConfig));
  for (var element in interceptors) {
    dio.interceptors.add(element);
  }
  (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
    return client;
  };
  return dio;
}

BaseOptions _baseOptions(NetworkConfig networkConfig) => BaseOptions(
      baseUrl: '${networkConfig.host}',
      headers: {
        'accept': Headers.jsonContentType,
      },
      contentType: Headers.jsonContentType,
      connectTimeout: Duration(minutes: 2),
      receiveTimeout: Duration(minutes: 2),
    );

get networkProvider => ProxyProvider<NetworkConfig, Dio>(
  update: (context, networkConfig, _){
    return _dio(networkConfig: networkConfig, interceptors: [ PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    )]);
  },
);