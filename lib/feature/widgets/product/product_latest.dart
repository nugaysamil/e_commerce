// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/product/utility/const/image_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/widgets/custom_image_view.dart';

class LatestProduct extends StatelessWidget {
  final String title;
  final String cost;
  final String imageUrl;
  final String reviewCount;
  const LatestProduct({
    Key? key,
    required this.title,
    required this.cost,
    required this.imageUrl,
    required this.reviewCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlackA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.deepOrange50,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            child: CustomNetworkImage(
              imageUrl: imageUrl,
              boxFit: BoxFit.fill,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 12.v,
                bottom: 12.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 5.v
                  ),
                  Text(
                    cost,
                    style: theme.textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 6.v,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30.v),
                    child: Text(
                          "($reviewCount reviews)",
                      style: theme.textTheme.bodySmall,
                    ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.v,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          bottom: 32.v,
                        ),
                      ),
                    ],
                  ),
                 
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
