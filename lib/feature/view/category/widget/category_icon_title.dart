import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class IconAndTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const IconAndTitle({
    Key? key,
    required this.icon,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlackA.copyWith(
        color: isSelected ? Colors.orange : Colors.white,
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: Icon(icon),
          ),
          SizedBox(height: 7.v),
          Text(
            title,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
