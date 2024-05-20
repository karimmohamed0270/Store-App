import 'package:store2/Models/Models/Products.dart';
import 'package:store2/helpers/API.dart';
// same code of post addproduct
class UpdateProductService {
  Future<ProductModel> updateproduct(
      {required String title,
      required String price,
      required String description,
      required String image, 
      
      required String category
     }) async {
    Map<String, dynamic> data = await API().put(
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
