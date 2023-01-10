import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:one_clicks_eats/const/server_config.dart';
import 'package:one_clicks_eats/models/products_model.dart';

class ProductHelper {
  Future<ProductsModel?> getProducts() async {
    try {
      String productApiUrl = Config.productURL;

      http.Response response = await http.get(Uri.parse(productApiUrl));
      if (response.statusCode == 200) {
        var jsonDecode = response.body;
        return productsModelFromJson(jsonDecode);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "error is: ${e}",
      );
    }
  }
}
