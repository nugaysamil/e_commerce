// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/utility/theme/custom_text_style.dart';
import 'package:flutter/widgets.dart';

class CategoryHeader extends StatelessWidget {
  final String titleText;
  final String actionText;
  final VoidCallback? callBack;

  const CategoryHeader({
    Key? key,
    required this.titleText,
    required this.actionText,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: CustomTextStyles.titleMediumBluegray90016.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
          GestureDetector(
            onTap: callBack,
            child: Text(
              actionText,
              style: CustomTextStyles.bodySmallBluegray900.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
