import 'dart:convert';

import 'package:storeapp/core/resources/manager_strings.dart';

import '../helper/api.dart';
import '../models/proudct_model.dart';
import 'package:http/http.dart' as http;

class GetAllProudcts {
  Future<List<ProductModel>> getAllProudct() async {
    List<dynamic> data =
        await Api().get(uri: '${ManagerStrings.baseuriApi}/products');

    List<ProductModel> productsList = []; // انشاء ليست للبرودكت
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i])); //تخزينهم
    }
    return productsList;
  }
}
