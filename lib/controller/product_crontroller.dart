import 'package:get/state_manager.dart';
import 'package:one_clicks_eats/const/global_variable.dart';
import 'package:one_clicks_eats/helper/product_helper.dart';
import 'package:one_clicks_eats/models/products_model.dart';

class ProductController extends GetxController {
  var productList = ProductsModel().obs;
  var _productHelper = ProductHelper();

  @override
  void onInit() {
    getDataProduct();
    super.onInit();
  }

  void getDataProduct() async {
    isProgress.value = true;
    var resultData = await _productHelper.getProducts();
    if (resultData != null) {
      productList.value = resultData;
      isProgress.value = false;
      update();
    }
  }
}
