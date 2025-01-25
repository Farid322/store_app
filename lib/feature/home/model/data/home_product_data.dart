import 'package:dio/dio.dart';
import 'package:store_app/feature/home/model/model/home_model.dart';

class HomeProductData {
  final dio = Dio();

  Future<List<HomeModel>> getProduct({required String endPoint}) async {
    var response =
        await dio.get("https://fakestoreapi.com/products/category/$endPoint");
    if (response.statusCode == 200) {
      List jsonBody = response.data;
      List<HomeModel> data = jsonBody
          .map(
            (e) => HomeModel.fromJson(e),
          )
          .toList();
      return data;
    } else {
      throw Exception("failure");
    }
  }
}
