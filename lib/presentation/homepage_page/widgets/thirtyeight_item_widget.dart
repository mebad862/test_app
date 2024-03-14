import '../models/thirtyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class ThirtyeightItemWidget extends StatelessWidget {
  ThirtyeightItemWidget(
    this.thirtyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtyeightItemModel thirtyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 131.v,
          width: 122.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 53.v),
                      Text(
                        thirtyeightItemModelObj.theEastEnd!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: thirtyeightItemModelObj?.theEastEnd1,
                height: 96.v,
                width: 105.h,
                radius: BorderRadius.circular(
                  5.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
