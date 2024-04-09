import 'package:e_commerce/feature/model/product_model.dart';

mixin CartMixin {
  double calculateSubtotal(List<Product> cartItems) {
    double subtotal = 0;
    for (final product in cartItems) {
      subtotal += product.price!;
    }
    return subtotal;
  }

  double calculateDiscount(double subtotal) {
    return double.parse((subtotal * 0.2).toStringAsFixed(2));
  }

  double calculateTotal(double subtotal, double discount) {
    return double.parse((subtotal - discount).toStringAsFixed(2));
  }
}
