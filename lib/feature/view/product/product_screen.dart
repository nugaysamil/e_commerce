import 'package:e_commerce/feature/view/product_detail/product_detail.dart';
import 'package:e_commerce/feature/view_model/product_view_model.dart';
import 'package:e_commerce/feature/widgets/product/product_card.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularScreen extends ConsumerWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productFuture = ref.watch(productFutureProvider);

    return Scaffold(
      appBar: CustomAppBar(
        appBarText: StringConstants.popularProducts,
        appBarLeftIcon: Icons.arrow_back,
        appBarRightIcon: Icons.shopping_bag_outlined,
      ),
      body: productFuture.when(
        data: (products) {
          return SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.v),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.h,
                mainAxisSpacing: 20.v,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  title: product.title ?? 'No title',
                  reviewCount: '${product.rating?.count ?? 0}',
                  price: '${product.price ?? 0}',
                  imageUrl: product.image!,
                  onButtonPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                        title: product.title ?? 'No title',
                        reviewCount: '${product.rating?.count ?? 0}',
                        price: '${product.price ?? 0}',
                        imageUrl: product.image!,
                        description: product.description!,
                        category: product.category!
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
