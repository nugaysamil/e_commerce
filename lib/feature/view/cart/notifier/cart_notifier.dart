import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce/feature/model/product_model.dart';

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super([]);

  void addProduct(Product product) {
    state = [...state, product];
  }

  void removeProduct(int index) {
    state = [...state]..removeAt(index);
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<Product>>((ref) {
  return CartNotifier();
});
