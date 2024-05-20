import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store2/helpers/API.dart';

class Getallcategory {
  Future<List> getallcategory() async {
    Response response =
        await API().get(url: "https://fakestoreapi.com/products/categories");
// decode
    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
