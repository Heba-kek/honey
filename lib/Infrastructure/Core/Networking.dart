import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum HttpMethod { GET, POST }

class ApiProvider {
  final String _baseUrl = "http://honey-bee.life/APi/";
  Dio _dio;

  ApiProvider() {
    BaseOptions options =
        BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);

    _dio = Dio(options);
  }

  Future<dynamic> fetchData(
      {@required HttpMethod method,
      @required String url,
      Map<String, dynamic> queryParameters,
      Map<String, dynamic> bodyData,
      CancelToken cancelToken}) async {
    try {
      var preferences = await SharedPreferences.getInstance();
      String token = preferences.getString('token');
      String id = preferences.getString('id');
      String lang = preferences.getString('lang');

      _dio.interceptors.clear();
      _dio.interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        // Do something before request is sent
        options.headers["Authorization"] = "Bearer " + token;
        options.contentType = Headers.formUrlEncodedContentType;
        options.headers["lang"] = lang;
        return options;
      }, onResponse: (Response response) {
        //  responseJson = _response(response);
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling get');
        print(error.response);
        throw Exception(error.response);
      }));

      String apiURL = _baseUrl + url;
      print(apiURL);

      Response response;
      switch (method) {
        case HttpMethod.GET:
          Map<String, dynamic> queryParamsTemp;
          if (queryParameters != null) {
            queryParamsTemp = queryParameters;
            queryParamsTemp["user_id"] = id;
          } else {
            queryParamsTemp = Map<String, dynamic>();
            queryParamsTemp["user_id"] = id;
          }
          response = await _dio.get(apiURL,
              queryParameters: queryParamsTemp, cancelToken: cancelToken);
          break;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          response =
              await _dio.post(apiURL, data: tempData, cancelToken: cancelToken);
          break;
      }
      print(response);
      return _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _response(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.data.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
