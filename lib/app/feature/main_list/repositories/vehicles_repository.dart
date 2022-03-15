import 'package:desafio_web_motors/app/shared/sevices/end_points.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class VehiclesRepository {
  VehiclesRepository();

  Future<Response<dynamic>?> getVehiclesList(int page) async {
    try {
      var _dio = Dio();
      return await _dio
          .get('${EndPoints.baseUrl}${EndPoints.vehicles}', queryParameters: {
        'Page': page,
      });
    } on DioError catch (err) {      
      if (kDebugMode) {
        print(throw err.response?.data['errors'][0]['message']);
      }
      return err.response;
    }
  }
}
