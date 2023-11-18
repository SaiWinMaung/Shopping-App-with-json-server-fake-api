// ignore_for_file: unnecessary_null_comparison

import 'package:get/get.dart';
import 'package:shoppingappwithjsonserver/Database/apiservice.dart';
import 'package:shoppingappwithjsonserver/Model/fruitmodel.dart';

class FruitController extends GetxController {
  var isLoading = true.obs;
  var fruitList = <Fruit>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var fruits = await ApiService.fetchProduct();
      if (fruits != null) {
        fruitList.value = fruits;
      }
    } finally {
      isLoading(false);
    }
  }
}
