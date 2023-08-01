import 'dart:convert';

import 'package:storeapp/models/proudct_model.dart';
import 'package:http/http.dart' as http;

import '../core/resources/manager_strings.dart';
import '../helper/api.dart';

class Categories {
  Future<List<ProductModel>> GetCategorie(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
        uri:
            '${ManagerStrings.baseuriApi}/products/category/$categoryName'); //رابط الاي بي اي

    List<ProductModel> proudctList = [];
    for (int i = 0; i < data.length; i++) {
      proudctList.add(ProductModel.fromJson(data[i]));
    }
    return proudctList;
  }
}
