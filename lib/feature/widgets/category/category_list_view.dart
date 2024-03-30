// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce/feature/model/list/category_list.dart';
import 'package:e_commerce/feature/widgets/category/category_text.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';

class CategoryListView extends StatelessWidget {
  final CategoryList categoryList;

  const CategoryListView({
    Key? key,
    required this.categoryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 14.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: categoryList.categories.length,
        itemBuilder: (context, index) {
          return CategoryText(
            categoryName: categoryList.categories[index],
          );
        },
      ),
    );
  }
}
