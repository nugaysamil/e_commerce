import 'package:e_commerce/feature/model/list/category_list.dart';
import 'package:e_commerce/feature/widgets/category/category_header.dart';
import 'package:e_commerce/feature/widgets/category/category_list_view.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/widgets/app_bar.dart/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_decoration_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        ],
      ),
    );
  }
}
