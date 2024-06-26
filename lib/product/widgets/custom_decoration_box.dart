import 'package:e_commerce/product/generation/assets.gen.dart';
import 'package:e_commerce/product/generation/colors.gen.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:e_commerce/product/utility/theme/app_decoration.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/utility/theme/custom_button_style.dart';
import 'package:e_commerce/product/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomDecorationBox extends StatelessWidget {
  const CustomDecorationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 128.v,
            width: 70.h,
            decoration: BoxDecoration(
              color: appTheme.orange30001,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            child: Image.asset(
              Assets.images.images.path,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 255.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "30%",
                        ),
                        TextSpan(
                          text: " discount on all home decoration products",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  width: 268.h,
                  text: "Get Now".toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillOrange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
