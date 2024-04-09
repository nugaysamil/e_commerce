import 'package:e_commerce/feature/model/list/category_list.dart';
import 'package:e_commerce/feature/view/category/category_screen.dart';
import 'package:e_commerce/feature/view/product/product_screen.dart';
import 'package:e_commerce/feature/view_model/product_view_model.dart';
import 'package:e_commerce/feature/widgets/category/category_header.dart';
import 'package:e_commerce/feature/widgets/category/category_list_view.dart';
import 'package:e_commerce/feature/widgets/product/product_latest.dart';
import 'package:e_commerce/feature/widgets/product/product_card.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/widgets/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_decoration_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CategoryList categoryList = CategoryList();
    final productFuture = ref.watch(productFutureProvider);

    return Scaffold(
      appBar: CustomAppBar(
        appBarRightIcon: Icons.search,
        appBarLeftIcon: Icons.menu,
        appBarText: StringConstants.homeText,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            CustomDecorationBox(),
            SizedBox(height: 10),
            CategoryHeader(
              titleText: StringConstants.category,
              actionText: StringConstants.seeAll,
              callBack: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(),
                ),
              ),
            ),
            SizedBox(height: 10),
            CategoryListView(
              categoryList: categoryList,
            ),
            CategoryHeader(
              titleText: StringConstants.popularProducts,
              actionText: StringConstants.seeAll,
              callBack: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PopularScreen(),
                ),
              ),
            ),
            SizedBox(height: 10),
            productFuture.when(
              data: (products) {
                return SizedBox(
                  height: 310.v,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductCard(
                        title: product.title ?? 'No title',
                        reviewCount: '${product.rating?.count ?? 0}',
                        price: '${product.price ?? 0}',
                        imageUrl: product.image!,
                      );
                    },
                  ),
                );
              },
              loading: () => SizedBox(
                height: 264.v,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, stack) => SizedBox(
                height: 264.v,
                child: Center(child: Text('Error: $error')),
              ),
            ),
            SizedBox(height: 10),

            CategoryHeader(
              titleText: StringConstants.latestProducts,
              actionText: StringConstants.seeAll,
            ),
            SizedBox(height: 10),

            productFuture.when(
              data: (products) {
                return ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 8.h,
                    ); 
                  },
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return LatestProduct(
                        title: product.title ?? 'No title',
                        reviewCount: '${product.rating?.count ?? 0}',
                        cost: '${product.price ?? 0}',
                      imageUrl: product.image!,
                    );
                  },
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ],
        ),
      ),
    );
  }
}
