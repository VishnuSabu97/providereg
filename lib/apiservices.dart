import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:providereg/ProductModel.dart';

class ApiServices {
  Future<List<Products>?> fetchProducts() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if (response.statusCode == 200) {
      var jsonnn = jsonDecode(response.body);
      var productss = ProductModel.fromJson(jsonnn);

      var studentlist = productss.products;
      return studentlist;
    } else {
      throw Exception("error");
    }
  }
}
