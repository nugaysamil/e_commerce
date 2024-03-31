import 'package:e_commerce/feature/model/list/category_list.dart';
import 'package:e_commerce/feature/view_model/product_view_model.dart';
import 'package:e_commerce/feature/widgets/category/category_header.dart';
import 'package:e_commerce/feature/widgets/category/category_list_view.dart';
import 'package:e_commerce/feature/widgets/product/product_card.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/widgets/app_bar.dart/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_decoration_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final CategoryList categoryList = CategoryList();
     

    return Scaffold(
      appBar: CustomAppBar(
        appBarRightIcon: Icons.search,
        appBarLeftIcon: Icons.menu,
        appBarText: StringConstants.homeText,
      ),
      body: Column(
        children: [
          CustomDecorationBox(),
          CategoryHeader(
            titleText: StringConstants.category,
            actionText: StringConstants.seeAll,
          ),
          CategoryListView(
            categoryList: categoryList,
          ),
          CategoryHeader(
            titleText: StringConstants.popularProducts,
            actionText: StringConstants.seeAll,
          ),
          SizedBox(
            height: 264.v,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return ProductCard(
                  title: 'a',
                  reviewCount: '55',
                  price: '555',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
