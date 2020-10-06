import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum HttpMethod { GET, POST }

class ApiProvider {
  final String _baseUrl = "http://honey-bee.life/";
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

        print("token $token");
        if (token != null) options.headers["Auth"] = "Bearer " + token;

        if (lang != null) options.headers["lang"] = lang;
        options.headers["Content_Type"] = "application/x-www-form-urlencoded";
        // options.contentType = Headers.formUrlEncodedContentType; //'form-data';

        print('options ${options.contentType}');
        return options;
      }, onResponse: (Response response) {
        print(response);
        print("Response");
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling dio method');

        if (error.response.statusCode == 404) {
          print(error.response.data.toString());
          return error.response;
        }

        throw Exception(error.toString());
      }));
      String apiURLPost = _baseUrl + url;

      print(apiURLPost);

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
          print("user_id $id");
          print("queryParamsTemp $queryParamsTemp");
          response =
              await _dio.get(apiURLPost, queryParameters: queryParamsTemp);

          return response.data;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null && id != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else if (id != null) {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          print(tempData != null ? "tempData $tempData" : "bodyData $bodyData");

          response = await _dio.post(apiURLPost,
              data: tempData != null ? tempData : bodyData);

          return response.data;
      }
    } catch (exception) {
      throw FetchDataException(exception.toString());
    }
  }

  Future<dynamic> fetchDataReportMainEx(
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

        print("token + $token");
        if (token != null) options.headers["Auth"] = "Bearer " + token;

        if (lang != null) options.headers["lang"] = lang;

        options.contentType = Headers.formUrlEncodedContentType; //'form-data';

        print('options ${options.contentType}');
        return options;
      }, onResponse: (Response response) {
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling dio method');

        if (error.response.statusCode == 404) {
          print(error.response.data.toString());
          return error.response;
        }

        throw Exception(error.toString());
      }));
      String apiURLPost = _baseUrl + url;
      String apiURLget;
      String dfvdg = bodyData['start_date'].toString();
      print(dfvdg);
      if (id != null) {
        apiURLget = _baseUrl +
            url +
            '?user_id=' +
            id +
            '&start_date=' +
            bodyData['start_date'] +
            '&end_date=' +
            bodyData['end_date'];
        print(apiURLget);
      }

      print(apiURLPost);

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
          print("queryParamsTemp $queryParamsTemp");
          response =
              await _dio.get(apiURLget, queryParameters: queryParamsTemp);

          return response.data;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null && id != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else if (id != null) {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          print(tempData != null ? "tempData $tempData" : "bodyData $bodyData");

          response = await _dio.post(apiURLPost,
              data: tempData != null ? tempData : bodyData);

          return response.data;
      }
    } catch (exception) {
      throw FetchDataException(exception.toString());
    }
  }

  Future<dynamic> fetchDataReportMain(
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

        print("token + $token");
        if (token != null) options.headers["Auth"] = "Bearer " + token;

        if (lang != null) options.headers["lang"] = lang;

        options.contentType = Headers.formUrlEncodedContentType; //'form-data';

        print('options ${options.contentType}');
        return options;
      }, onResponse: (Response response) {
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling dio method');

        if (error.response.statusCode == 404) {
          print(error.response.data.toString());
          return error.response;
        }

        throw Exception(error.toString());
      }));
      String apiURLPost = _baseUrl + url;
      String apiURLget;
      String dfvdg = bodyData['start_date'].toString();
      print(dfvdg);
      if (id != null) {
        apiURLget = _baseUrl +
            url +
            '?user_id=' +
            id +
            '&category=' +
            bodyData['category'].toString() +
            '&start_date=' +
            bodyData['start_date'] +
            '&end_date=' +
            bodyData['end_date'];
        print(apiURLget);
      }

      print(apiURLPost);

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
          print("queryParamsTemp $queryParamsTemp");
          response =
              await _dio.get(apiURLget, queryParameters: queryParamsTemp);

          return response.data;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null && id != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else if (id != null) {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          print(tempData != null ? "tempData $tempData" : "bodyData $bodyData");

          response = await _dio.post(apiURLPost,
              data: tempData != null ? tempData : bodyData);

          return response.data;
      }
    } catch (exception) {
      throw FetchDataException(exception.toString());
    }
  }

  Future<dynamic> fetchDataReportSub(
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

        print("token + $token");
        if (token != null) options.headers["Auth"] = "Bearer " + token;

        if (lang != null) options.headers["lang"] = lang;

        options.contentType = Headers.formUrlEncodedContentType; //'form-data';

        print('options ${options.contentType}');
        return options;
      }, onResponse: (Response response) {
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling dio method');

        if (error.response.statusCode == 404) {
          print(error.response.data.toString());
          return error.response;
        }

        throw Exception(error.toString());
      }));
      String apiURLPost = _baseUrl + url;
      String apiURLget;
      String dfvdg = bodyData['start_date'].toString();
      print(dfvdg);
      if (id != null) {
        apiURLget = _baseUrl +
            url +
            '?user_id=' +
            id +
            '&sub_category=' +
            bodyData['sub_category'].toString() +
            '&start_date=' +
            bodyData['start_date'].toString() +
            '&end_date=' +
            bodyData['end_date'].toString() +
            '&category=' +
            bodyData['category'].toString();
        print(apiURLget);
      }

      print(apiURLPost);

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
          print("queryParamsTemp $queryParamsTemp");
          response =
              await _dio.get(apiURLget, queryParameters: queryParamsTemp);

          return response.data;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null && id != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else if (id != null) {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          print(tempData != null ? "tempData $tempData" : "bodyData $bodyData");

          response = await _dio.post(apiURLPost,
              data: tempData != null ? tempData : bodyData);

          return response.data;
      }
    } catch (exception) {
      throw FetchDataException(exception.toString());
    }
  }

  Future<dynamic> fetchDataSub(
      {@required HttpMethod method,
      @required String url,
      Map<String, dynamic> queryParameters,
      Map<String, dynamic> bodyData,
      CancelToken cancelToken,
      @required String catId}) async {
    try {
      var preferences = await SharedPreferences.getInstance();
      String token = preferences.getString('token');
      String id = preferences.getString('id');
      String lang = preferences.getString('lang');

      _dio.interceptors.clear();
      _dio.interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        // Do something before request is sent

        if (token != null) options.headers["Auth"] = "Bearer " + token;

        if (lang != null) options.headers["lang"] = lang;

        options.contentType = Headers.formUrlEncodedContentType;

        print('options ${options.contentType}');
        return options;
      }, onResponse: (Response response) {
        return response; // continue
      }, onError: (DioError error) async {
        print('error calling dio method');

        if (error.response.statusCode == 404) {
          print(error.response.data.toString());
          return error.response;
        }

        throw Exception(error.toString());
      }));
      String apiURLPost = _baseUrl + url;
      String apiURLget;
      if (id != null) {
        apiURLget = _baseUrl + url + '?user_id=' + id + '&category_id=' + catId;
        print(apiURLget);
      }
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
          print("queryParamsTemp $queryParamsTemp");
          response =
              await _dio.get(apiURLget, queryParameters: queryParamsTemp);

          return response.data;
        case HttpMethod.POST:
          Map<String, dynamic> tempData;
          if (bodyData != null && id != null) {
            tempData = bodyData;
            tempData["user_id"] = id;
          } else if (id != null) {
            tempData = Map<String, dynamic>();
            tempData["user_id"] = id;
          }
          print(tempData != null ? "tempData $tempData" : "bodyData $bodyData");

          response = await _dio.post(apiURLPost,
              data: tempData != null ? tempData : bodyData);

          return response.data;
      }
    } catch (exception) {
      throw FetchDataException(exception.toString());
    }
  }
}
