import '../models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 182.h,
      child: CustomImageView(
        imagePath: fortytwoItemModelObj?.pngwing,
        height: 169.v,
        width: 182.h,
        margin: EdgeInsets.only(
          top: 63.v,
          bottom: 46.v,
        ),
      ),
    );
  }
}
