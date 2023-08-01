import 'dart:convert';

import '../core/resources/manager_strings.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';

class AllCatgories {
  Future<List<dynamic>> GetAllCategory() async {
    List<dynamic> data = await Api().get(
        uri: '${ManagerStrings.baseuriApi}/products/categories');

    return data;

  }
}
