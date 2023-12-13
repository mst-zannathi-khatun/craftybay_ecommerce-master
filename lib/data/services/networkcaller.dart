import 'dart:convert';
import 'package:craftybay_ecommerce/data/models/response_model.dart';
import 'package:craftybay_ecommerce/data/utils/urls.dart';
import 'package:http/http.dart';

class NetWorkCaller {
  NetWorkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      final response = await get(Uri.parse(Urls.baseUrl + url));
      print(response.body);
      if (response.statusCode == 200) {
        return ResponseModel(
            statusCode: response.statusCode,
            isSuccess: true,
            returenData: jsonDecode(response.body));
      } else {
        return ResponseModel(
            statusCode: response.statusCode,
            isSuccess: false,
            returenData: jsonDecode(response.body));
      }
    } catch (e) {
      return ResponseModel(
          statusCode: -1, isSuccess: false, returenData: e.toString());
    }
  }
}