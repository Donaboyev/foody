import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foody_flutter/core/constants/app_constants.dart';
import 'package:foody_flutter/data/response/food_search_response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConstants.BASE_URL)
abstract class ApiClient {
  static Alice alice = Alice(
    showNotification: true,
    showInspectorOnShake: false,
    darkTheme: false,
  );

  static get getDio {
    Dio dio = Dio(BaseOptions(followRedirects: false));
    if (kDebugMode) dio.interceptors.add(alice.getDioInterceptor());
    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        request: true,
      ),
    );
    return dio;
  }

  static ApiClient? _apiClient;

  static ApiClient? getInstance({String baseUrl = AppConstants.BASE_URL}) {
    if (_apiClient != null)
      return _apiClient;
    else {
      _apiClient = ApiClient(getDio, baseUrl);
      return _apiClient;
    }
  }

  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET('/recipes/complexSearch')
  Future<FoodSearchResponse> searchRecipes(
      @Queries() Map<String, String> queries);
}
