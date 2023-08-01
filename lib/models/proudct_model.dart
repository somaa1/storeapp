import '../core/resources/manager_strings.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData[ManagerStrings.id],
        title: jsonData[ManagerStrings.title],
        price: jsonData[ManagerStrings.price],
        description: jsonData[ManagerStrings.description],
        image: jsonData[ManagerStrings.image],
        rating: RatingModel.fromJson(jsonData[ManagerStrings.rating])
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: jsonData[ManagerStrings.rate],
        count: jsonData[ManagerStrings.count]);
  }
}
