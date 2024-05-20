import 'package:http/http.dart';
import 'package:store2/Models/Models/Products.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store2/helpers/API.dart';

class CategryService {
  Future<List<ProductModel>> Getcategoryproduct({required String category}) async {
    Response response = await API()
        .get(url: "https://fakestoreapi.com/products/category/$category");
// decode
    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> produclist = [];

    for (var i = 0; i < produclist.length; i++) {
      produclist.add(ProductModel.fromJson(data[i]));
    }
    return produclist;
  }
}
