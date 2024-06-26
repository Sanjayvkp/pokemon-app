import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pokemon_api/model/pokemon_model.dart';
import 'package:pokemon_api/utils/api_utils.dart';

class ApiService {
  final Dio dio = Dio();
  Future<List<Ability>?> getData() async {
    try {
      var response = await dio.get(ApiUtils.baseUrl);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <Ability>[];
        for (var d in data['abilities']) {
          datas.add(Ability.fromJson(d));
        }
        return datas;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
