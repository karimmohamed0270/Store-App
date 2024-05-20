import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API {
  Future<http.Response> get({required String url,@required String? token}) async {
    // check auth or not to any one can use it.
     Map<String, String> headers = {};

    if (token != null) {
      // so there is security in headers
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem of status code${response.statusCode}');
    }
  }

  // method of post
  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      // so there is security in headers
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    if (response.statusCode == 200) {
      //  making decode of the data here not in service
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem of status code${response.statusCode}');
    }
  }

 // method of put to update product
  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {
      'Content-Type':'application/x-www-form-urlencoded',
    };

    if (token != null) {
      // so there is security in headers
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    if (response.statusCode == 200) {
      //  making decode of the data here not in service
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem of status code${response.statusCode}');
    }
  }
}
