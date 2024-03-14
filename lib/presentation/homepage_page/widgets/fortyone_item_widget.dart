import '../models/fortyone_item_model.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class FortyoneItemWidget extends StatelessWidget {
  FortyoneItemWidget(
    this.fortyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortyoneItemModel fortyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 278.v,
      width: 271.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(right: 92.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                      children: [
                        Text(
                          fortyoneItemModelObj.macComboDeal!,
                          style: CustomTextStyles.titleSmallGray900,
                        ),
                        CustomImageView(
                          imagePath: fortyoneItemModelObj?.favorite,
                          height: 16.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 10.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      fortyoneItemModelObj.burgerFriseDrink!,
                      style: CustomTextStyles.bodySmallGray900,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      fortyoneItemModelObj.rs!,
                      style: CustomTextStyles.labelLargeGray900,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                    height: 36.v,
                    width: 143.h,
                    text: "lbl_add_to_cart".tr,
                    margin: EdgeInsets.only(left: 2.h),
                    buttonStyle: CustomButtonStyles.outlineBlackTL10,
                    buttonTextStyle: CustomTextStyles.labelLargeWhiteA700_1,
                  ),
                  SizedBox(height: 96.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: fortyoneItemModelObj?.imageNineteen,
            height: 146.v,
            width: 232.h,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
