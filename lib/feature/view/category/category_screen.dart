import 'package:e_commerce/feature/model/list/category_icon_list.dart';
import 'package:e_commerce/feature/view/category/widget/category_icon_title.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_decoration_box.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int? _selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarLeftIcon: Icons.arrow_back_ios,
        appBarText: StringConstants.category,
        appBarRightIcon: Icons.search,
      ),
      body: Column(
        children: [
          CustomDecorationBox(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 121.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: IconItem.items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCardIndex = index;
                    });
                  },
                  child: IconAndTitle(
                    icon: IconItem.items[index].icon,
                    title: IconItem.items[index].title,
                    isSelected: _selectedCardIndex == index,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

