// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/product/utility/const/image_constant.dart';
import 'package:e_commerce/product/widgets/custom_image_view.dart';
import 'package:e_commerce/product/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String reviewCount;
  final String price;
  final String imageUrl;


  const ProductCard({
    Key? key,
    required this.title,
    required this.reviewCount,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlackA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 14.v,
            alignment: Alignment.centerRight,
          ), 
          SizedBox(height: 12.v),
          Container(
            height: 131.v,
            width: 157.h,
            decoration: BoxDecoration(
              color: appTheme.gray20001,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            child: CustomNetworkImage(
              imageUrl: imageUrl,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            title,
            style: theme.textTheme.titleSmall,
            maxLines: 2,
          ),
          SizedBox(height: 6.v),
          
          Row(
            children: [
              CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 14.v,
            alignment: Alignment.centerRight,
              ), 
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
