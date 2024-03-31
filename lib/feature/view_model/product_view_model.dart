import 'package:dio/dio.dart';
import 'package:e_commerce/feature/model/product_model.dart';
import 'package:e_commerce/product/service/manager/product_network_manager.dart';
import 'package:riverpod/riverpod.dart';

class ProductViewModel {
  final Dio _dio = ProjectNetworkManager.instance!.dio;

  final String _baseUrl = 'https://fakestoreapi.com/products';

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await _dio.get(_baseUrl);
      if (response.statusCode == 200) {
        List<Product> productList = [];
        for (var productJson in response.data) {
          productList.add(Product.fromJson(productJson));
        }
        return productList;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}

final productViewModelProvider = Provider((ref) => ProductViewModel());

final productFutureProvider = FutureProvider<List<Product>>((ref) async {
  final productViewModel = ref.watch(productViewModelProvider);
  return productViewModel.fetchProducts();
});
