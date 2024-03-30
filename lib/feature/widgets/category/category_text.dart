import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryText extends StatelessWidget {
  final String categoryName;

  const CategoryText({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 100.h,
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            Text(
              categoryName,
              style: CustomTextStyles.labelLargeOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
