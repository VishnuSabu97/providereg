

import 'package:flutter/cupertino.dart';
import 'package:providereg/ProductModel.dart';
import 'package:providereg/apiservices.dart';

class CounterProvider with ChangeNotifier{

  int count = 0;
  void increment(){
    count++;
    notifyListeners();
  }
  void decrement(){
    count--;
    notifyListeners();
  }
}
//
// class ApiProvider with ChangeNotifier{
//    ApiServices apiservice = ApiServices();
//    List<Products> productlist = [];
//
//    Future<void> fetchData() async {
//
//     productlist = (await apiservice.fetchProducts())!;
//     notifyListeners();
//
// //    }
// }