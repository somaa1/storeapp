import 'dart:convert';

import 'package:storeapp/core/resources/manager_strings.dart';

import '../models/proudct_model.dart';
import 'package:http/http.dart' as http;

class GetAllProudcts {
  Future<List<ProductModel>> getAllProudct() async {
    http.Response response =
        await http.get(Uri.parse(ManagerStrings.baseuriApi)); //رابط الاي بي اي

    List<dynamic> data = jsonDecode(response.body); //ترجيع كل الداتا
    List<ProductModel> productsList = []; // انشاء ليست للبرودكت
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i])); //تخزينهم
    }
    return productsList;
  }
}
