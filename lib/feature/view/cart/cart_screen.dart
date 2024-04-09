// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/feature/view/cart/mixin/cart_screen_mixin.dart';
import 'package:e_commerce/feature/view/cart/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce/feature/view/cart/notifier/cart_notifier.dart';
import 'package:e_commerce/product/utility/const/string_constant.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/utility/theme/custom_text_style.dart';
import 'package:e_commerce/product/widgets/custom_appbar.dart';
import 'package:e_commerce/product/widgets/custom_elevated_button.dart';

class CartScreen extends ConsumerWidget with CartMixin {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider);
    double subtotal = calculateSubtotal(cartItems);
    double discount = calculateDiscount(subtotal);
    double total = calculateTotal(subtotal, discount);

    return Scaffold(
      appBar: CustomAppBar(
        appBarLeftIcon: Icons.arrow_back_ios,
        appBarText: StringConstants.cart,
        appBarRightIcon: Icons.shopping_bag_outlined,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 11.v),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(left: 14.h),
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 16.v,
                  );
                },
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartItems[index];

                  return CartItemWidget(
                    title: product.title!,
                    price: product.price.toString(),
                    imageUrl: product.image!,
                    removeCallback: () {
                      ref.read(cartProvider.notifier).removeProduct(index);
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              padding: EdgeInsets.all(14.h),
              decoration: AppDecoration.outlineBlackA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildText(
                    context,
                    subtotal: "Select Item:",
                    price: "${cartItems.length}",
                  ),
                  SizedBox(height: 16.v),
                  _buildText(
                    context,
                    subtotal: "Subtotal:",
                    price: "\$$subtotal",
                  ),
                  SizedBox(height: 16.v),
                  _buildText(
                    context,
                    subtotal: "Discount (%20):",
                    price: "-\$$discount",
                  ),
                  SizedBox(height: 15.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildText(
                    context,
                    subtotal: "Total:",
                    price: "\$$total",
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              height: 48.v,
              text: "Buy".toUpperCase(),
              margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.v),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(
    BuildContext context, {
    required String subtotal,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 2.v,
          ),
          child: Text(
            subtotal,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleMediumBluegray900.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
      ],
    );
  }
}

