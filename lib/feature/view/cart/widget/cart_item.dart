import 'package:e_commerce/product/utility/const/image_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/widgets/custom_icon_button.dart';
import 'package:e_commerce/product/widgets/custom_image_view.dart';
import 'package:e_commerce/product/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartItemWidget extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final VoidCallback? removeCallback;
  const CartItemWidget({
    Key? key,
    this.title = '',
    this.price = '',
    this.imageUrl = '',
    this.removeCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlackA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (removeCallback != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                iconSize: 20,
                icon: Icon(Icons.close),
                onPressed: removeCallback,
              ),
            ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.v,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            '',
                            style: theme.textTheme.bodySmall,
                          ),
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
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlineGray,
                  child: CustomImageView(imagePath: imageUrl),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "1",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                CustomIconButton(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlineGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 91.v,
              width: 84.h,
              margin: EdgeInsets.only(left: 20.h),
              decoration: BoxDecoration(
                color: appTheme.deepOrange50,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
              child: CustomNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
