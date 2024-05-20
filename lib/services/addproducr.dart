import 'package:store2/Models/Models/Products.dart';
import 'package:store2/helpers/API.dart';

class AddProduct {
  Future<ProductModel> addproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await API().post(
        url: "https://fakestoreapi.com/products",
        body: {
          'title': title,
          'price': price,
          'description': description,
          'image': image,
          'category': category,
        },
        token: null);

    return ProductModel.fromJson(data);
  }
}
