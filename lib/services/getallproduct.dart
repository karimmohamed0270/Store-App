import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store2/Models/Models/Products.dart';
import 'package:store2/helpers/API.dart';

class get_allproduct {
// fun
  Future<List<ProductModel>> getallproduct() async {
    Response response =
        await API().get(url: 'https://fakestoreapi.com/products');
// decode
    List<dynamic> data = jsonDecode(response.body);

    // convert the retutn data to type of productmodel and store it 1 bt 1 and return it
    //to show product by product and information that i want to show in productmodel

    List<ProductModel> produclist = [];

    for (var i = 0; i < produclist.length; i++) {
      produclist.add(ProductModel.fromJson(data[i]));
    }
    return produclist;
  }
}
