// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import '../constants/constant.dart';
import '../utils/app_storage.dart';
import '../utils/app_utils.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiService {
  String tag = "Dio Service Tag";

  Dio? _dio;

  String baseUrl = "";

  Future<ApiService> init() async {
    logSys('Api Service Initialized');
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {'Content-Type': 'application/json'},
      ),
    );
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          logSys(
            '[REQUEST_METHOD] : ${requestOptions.method}\n[URL] : ${requestOptions.baseUrl}\n[PATH] : ${requestOptions.path}'
            '\n[PARAMS_VALUES] : ${requestOptions.data}\n[QUERY_PARAMS_VALUES] : ${requestOptions.queryParameters}\n[HEADERS] : ${requestOptions.headers}',
          );
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logSys(
            '[RESPONSE_STATUS_CODE] : ${response.statusCode}\n[RESPONSE_DATA] : ${jsonEncode(response.data)}\n',
          );
          return handler.next(response);
        },
        onError: (err, handler) {
          logSys("eror api Servie -===");
          logSys('Error[${err.response?.statusCode}]');
          logSys(
              "eror api Servie -===${err.response?.data['errors'][0]['message']}");
          return handler.next(err);
        },
      ),
    );
  }

  static Future<Map<String, String>> getHeader({
    Map<String, String>? headers,
    required bool isToken,
  }) async {
    final header = <String, String>{'Content-Type': 'application/json'};
    final token = await AppStorage.read(key: CACHE_ACCESS_TOKEN);
    if (isToken) {
      header['Authorization'] = 'Bearer $token';
    }
    return header;
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    Map<String, String>? headers,
    Map<String, dynamic>? parameters,
    bool isToken = true,
    bool isCustomResponse = false,
  }) async {
    Response response;

    final params = parameters ?? <String, dynamic>{};

    final header = await getHeader(headers: headers, isToken: isToken);

    if (_dio == null) {
      _dio = Dio(BaseOptions(baseUrl: baseUrl, headers: header));
      initInterceptors();
    }

    try {
      if (method == Method.POST) {
        response = await _dio!.post(url, data: parameters);
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio!.patch(url);
      } else {
        response = await _dio!.get(url, queryParameters: params);
      }

      // logSys("hahahahahah===${response?.statusCode}");

      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 422) {
        return response.data;
      } else if (response.statusCode == 401) {
        throw Exception('Unauthorized');
      } else if (response.statusCode == 500) {
        throw Exception('Server Error');
      } else {
        throw Exception("Something does wen't wrong");
      }
    } on SocketException catch (e) {
      logSys(e.toString());
      throw Exception('Not Internet Connection');
    } on FormatException catch (e) {
      logSys(e.toString());
      throw Exception('Bad response format');
    } on DioError catch (e) {
      // logSys("hahahahahh" + e.response?.data['errors'][0]['message']);
      if (e.response?.statusCode != 200) {
        return {
          'code': 422,
          "message": e.response?.data['errors'][0]['message']
        };
      }

      if (e.type == DioErrorType.badResponse) {
        final response = e.response;
        try {
          if (response != null && response.data != null) {
            final data = json.decode(response.data as String) as Map;

            throw Exception(data['message'] as String);
          }
        } catch (e) {
          throw Exception('Internal Error');
        }
      } else if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        throw Exception('Request timeout');
      } else if (e.error is SocketException) {
        throw Exception('No Internet Connection!');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> configGet({
    required String url,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      logSys("$tag call api from dio in dio");

      final response = await _dio?.get(
        "$url",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      logSys("$tag : $url");
      logSys("$tag : status Code Response ${response?.statusCode}");
      if (response?.statusCode == 200) {
        return response?.data;
      } else if (response?.statusCode == 401) {
        throw Exception('Unauthorized');
      } else if (response?.statusCode == 500) {
        throw Exception('Server Error');
      } else {
        throw Exception("Something does wen't wrong");
      }
    } catch (e) {
      logSys("$tag :gagal Call Api $e");
      throw Error();
    }
  }
}
