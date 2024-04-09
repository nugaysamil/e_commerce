import 'package:e_commerce/feature/model/product_model.dart';
import 'package:e_commerce/feature/view/cart/cart_screen.dart';
import 'package:e_commerce/feature/view/cart/notifier/cart_notifier.dart';
import 'package:e_commerce/product/utility/const/image_constant.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/utility/theme/custom_text_style.dart';
import 'package:e_commerce/product/widgets/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_elevated_button.dart';
import 'package:e_commerce/product/widgets/custom_image_view.dart';
import 'package:e_commerce/product/widgets/custom_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../product/utility/theme/app_decoration.dart';

class ProductDetailScreen extends ConsumerWidget {
  final String title;
  final String reviewCount;
  final String price;
  final String imageUrl;
  final String description;
  final String category;

  const ProductDetailScreen({
    super.key,
    required this.title,
    required this.reviewCount,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: StringConstants.productDetail,
        appBarRightIcon: Icons.favorite_border,
        appBarLeftIcon: Icons.arrow_back,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: imageUrl,
                width: 260.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 20.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: CustomTextStyles.titleLargeBluegray900,
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          category,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 7.v),
                        CustomRatingBar(
                          initialRating: 5,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$${price}',
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 30.v),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "Color",
                style: CustomTextStyles.titleMediumBluegray90016,
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.blue500,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.h),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray900,
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray500,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Text(
                "About",
                style: CustomTextStyles.titleMediumBluegray90016,
              ),
              SizedBox(height: 15.v),
              Container(
                width: 368.h,
                margin: EdgeInsets.only(right: 17.h),
                child: Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray600.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                text: "Add To Cart".toUpperCase(),
                onPressed: () {
                  Product product = Product(
                    title: title,
                    price: double.parse(price),
                    image: imageUrl,
                  );

                  ref.read(cartProvider.notifier).addProduct(product);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
              ),

              

             

              SizedBox(height: 6.v),
            ],
          ),
        ),
      ),
    );
  }
}
