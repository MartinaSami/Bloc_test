import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firstpproject/constants/strings.dart';
import 'package:firstpproject/data/models/businessmodel.dart';

class BusinessServices {
  Future<List<BusinessPartnerModel>> getBusinessPartners() async {
    var dio = Dio();

    var response = await dio.get(
      '${AppConstants.baseUrl}Drive_Client/BusinessPartner',
      options: Options(
          contentType: Headers.jsonContentType,
          followRedirects: false,
          validateStatus: (status) {
            return status! <= 500;
          }),
    );
    var responseData = json.encode(response.data);

    final list = json.decode(responseData) as List<dynamic>;

    return list.map((e) => BusinessPartnerModel.fromJson(e)).toList();
  }
}
