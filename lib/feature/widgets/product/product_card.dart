import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String reviewCount;
  final String price;

  const ProductCard({
    Key? key,
    required this.title,
    required this.reviewCount,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlackA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 185.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            /*  CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 14.v,
            alignment: Alignment.centerRight,
          ), */
          SizedBox(height: 12.v),
          Container(
            height: 131.v,
            width: 157.h,
            decoration: BoxDecoration(
              color: appTheme.gray20001,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            title,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 6.v),
          
          Row(
            children: [
                /*  CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 14.v,
            alignment: Alignment.centerRight,
          ), */
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "($reviewCount reviews)",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Text(
            price,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
