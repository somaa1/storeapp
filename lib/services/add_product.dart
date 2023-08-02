import 'package:storeapp/core/resources/manager_strings.dart';

import '../helper/api.dart';
import '../models/proudct_model.dart';

class AddProduct {
  Future<ProductModel> addproduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,

  }) async {
   Map<String,dynamic> data=  await Api().post(url:"${ManagerStrings.baseuriApi}/products",body: {
      "title": title,
      "price": price,
      "description":description,
      "image": image,
      "category": category
    }, token: '');
   return ProductModel.fromJson(data);
  }
}
