import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/widgets/app_bar.dart/custom_appbar.dart';
import 'package:e_commerce/product/widgets/app_bar.dart/custom_decoration_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarRightIcon: Icons.search,
        appBarLeftIcon: Icons.menu,
        appBarText: StringConstants.homeText,
      ),
      body: Column(
        children: [
          CustomDecorationBox(),
          Text(
            'Category',
          ),
        ],
      ),
    );
  }
}
