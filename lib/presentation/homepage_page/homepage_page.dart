import 'package:joybox/widgets/custom_icon_button.dart';
import 'package:joybox/widgets/custom_search_view.dart';
import 'package:joybox/widgets/custom_rating_bar.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/thirtynine_item_widget.dart';
import 'models/thirtynine_item_model.dart';
import 'models/homepage_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/thirtyeight_item_widget.dart';
import 'models/thirtyeight_item_model.dart';
import 'widgets/fortyone_item_widget.dart';
import 'models/fortyone_item_model.dart';
import 'widgets/forty_item_widget.dart';
import 'models/forty_item_model.dart';
import 'widgets/fortytwo_item_widget.dart';
import 'models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/homepage_provider.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomepageProvider(),
      child: HomepagePage(),
    );
  }
}

class HomepagePageState extends State<HomepagePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 430.h,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 63.v),
              child: Column(
                children: [
                  _buildUperWidget(context),
                  SizedBox(height: 29.v),
                  SizedBox(
                    height: 1.v,
                    width: 81.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 81.h,
                            child: Divider(
                              color: appTheme.gray40001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 61.h,
                            child: Divider(
                              color: appTheme.red50001,
                              indent: 1.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: _buildNinetyOne(
                      context,
                      menu: "msg_popular_restaurants".tr,
                      seeAll: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildrestaurantsWidget(context),
                  // SizedBox(height: 5.v),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(
                  //       left: 28.h,
                  //       right: 88.h,
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           "msg_opening_11pm_12am".tr,
                  //           style: CustomTextStyles.labelMediumBlack900,
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(left: 80.h),
                  //           child: Text(
                  //             "msg_opening_11pm_12am".tr,
                  //             style: CustomTextStyles.labelMediumBlack900,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 21.v),
                  // SizedBox(
                  //   width: 86.h,
                  //   child: Divider(),
                  // ),
                  // SizedBox(height: 27.v),
                  // _buildSeventySeven(context),
                  // SizedBox(height: 43.v),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 27.h),
                  //   child: _buildNinetyOne(
                  //     context,
                  //     menu: "msg_traditional_restaurants".tr,
                  //     seeAll: "lbl_see_all".tr,
                  //   ),
                  // ),
                  // SizedBox(height: 31.v),
                  // _buildThirtyEight(context),
                  // SizedBox(height: 44.v),
                  // SizedBox(
                  //   width: 86.h,
                  //   child: Divider(),
                  // ),
                  // SizedBox(height: 41.v),
                  // _buildSeventyFive(context),
                  // SizedBox(height: 42.v),
                  // _buildFiftyEight(context),
                  // SizedBox(height: 24.v),
                  // SizedBox(
                  //   height: 9.v,
                  //   child: AnimatedSmoothIndicator(
                  //     activeIndex: 0,
                  //     count: 3,
                  //     effect: ScrollingDotsEffect(
                  //       spacing: 7,
                  //       activeDotColor: appTheme.red50001,
                  //       dotColor: appTheme.blueGray100,
                  //       dotHeight: 9.v,
                  //       dotWidth: 9.h,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 39.v),
                  // _buildFortySeven(context),
                  // SizedBox(height: 25.v),
                  // _buildFortyTwo(context),
                ],
              ),
            ),
          ),
        ),
      
      ),
    );
  }

  /// Section Widget
  Widget _buildUperWidget(BuildContext context) {
    return IntrinsicWidth(
      child: SizedBox(
        height: 367.v,
        width: 430.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150.v,
                width: 430.h,
                margin: EdgeInsets.only(bottom: 26.v),
                decoration: BoxDecoration(
                  color: appTheme.gray10001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4788,
                    height: 17.v,
                    width: 430.h,
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      right: 33.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          child: CustomImageView(
                            fit: BoxFit.contain,
                            imagePath: ImageConstant.imgTelevision,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_deliver_to".tr,
                                  style: CustomTextStyles.bodyMediumRed50001,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 8.v,
                                  width: 6.h,
                                  margin: EdgeInsets.only(
                                    left: 7.h,
                                    top: 9.v,
                                    bottom: 5.v,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_4102_pretty_view".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup18125,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "msg_what_would_you_like".tr,
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 25.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Selector<HomepageProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.searchController,
                        builder: (context, searchController, child) {
                          return CustomSearchView(
                            width: 236.h,
                            controller: searchController,
                            hintText: "msg_find_what_you_need".tr,
                          );
                        },
                      ),
                                            SizedBox(width: 10,),

                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration:
                            IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClose,
                        ),
                      ),
                      SizedBox(width: 10,),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration:
                            IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStreamlineVoiceMail,
                        ),
                      ),
                      SizedBox(width: 10,),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration:
                            IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseAmber40040x40,
                        ),
                      )
                    
                    ],
                  ),
                
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 160.v,
                      width: 396.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          
                          
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 390.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 32.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [

                                  
                          //         CustomImageView(
                          //   imagePath: ImageConstant.imgPngwing102,
                          //   height: 84.v,
                          //   width: 94.h,
                          //   alignment: Alignment.topLeft,
                          // ),
                                  
                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.h,
                                      vertical: 6.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                          height: 54.v,
                                          width: 64.h,
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle8x39,
                                                height: 8.v,
                                                width: 39.h,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                  right: 4.h,
                                                  bottom: 7.v,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle25x59,
                                                height: 25.v,
                                                width: 59.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPngwing102,
                                                height: 45.v,
                                                width: 50.h,
                                                alignment: Alignment.topRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text(
                                            "lbl_food".tr,
                                            style: CustomTextStyles
                                                .labelLargeGray400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  
                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.h,
                                      vertical: 6.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                          height: 54.v,
                                          width: 64.h,
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle8x39,
                                                height: 8.v,
                                                width: 39.h,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                  right: 4.h,
                                                  bottom: 7.v,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle25x59,
                                                height: 25.v,
                                                width: 59.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle45x50,
                                                height: 45.v,
                                                width: 50.h,
                                                alignment: Alignment.topRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text(
                                            "lbl_health".tr,
                                            style: CustomTextStyles
                                                .labelLargeGray400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  
                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 1.h,
                                      vertical: 8.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            height: 45.v,
                                            width: 66.h,
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle,
                                                  height: 3.v,
                                                  width: 13.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    bottom: 1.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle5x25,
                                                  height: 5.v,
                                                  width: 25.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: SizedBox(
                                                    height: 12.v,
                                                    width: 54.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle12x54,
                                                          height: 12.v,
                                                          width: 54.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 6.h,
                                                              right: 18.h,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle1x14,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        4.v),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgLayer4Copy,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        1.v),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgLayer4Copy2,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img71,
                                                  height: 44.v,
                                                  width: 50.h,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 11.v),
                                        Text(
                                          "lbl_toys".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 90.v,
                                    width: 83.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 8.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL5,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 58.v),
                                                Text(
                                                  "lbl_furniture".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeGray400,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgOqxyzc1,
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildrestaurantsWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 21.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 317.v,
              width: 184.h,
              margin: EdgeInsets.only(left: 13.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 300.v,
                      width: 184.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4417,
                            height: 300.v,
                            width: 184.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 56.v,
                                      width: 162.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: 139.h,
                                              child: Text(
                                                "msg_lebanese_restaurant".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelLargeWhiteA700Bold
                                                    .copyWith(
                                                  height: 1.30,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMdiFavouriteBorder,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 149.v),
                                  CustomElevatedButton(
                                    height: 33.v,
                                    width: 134.h,
                                    text: "lbl_order_now".tr,
                                  ),
                                  SizedBox(height: 20.v),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 31.v,
                                        width: 69.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.h,
                                          vertical: 4.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillWhiteA.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.customBorderLR5,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSettingsBlack900,
                                          height: 21.v,
                                          width: 34.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSettingsAmber400,
                                        height: 10.v,
                                        width: 11.h,
                                        margin: EdgeInsets.only(
                                          left: 18.h,
                                          top: 11.v,
                                          bottom: 9.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 7.h,
                                          top: 11.v,
                                          bottom: 6.v,
                                        ),
                                        child: Text(
                                          "lbl_free_delivery".tr,
                                          style: theme.textTheme.labelMedium,
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 51.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 133.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillAmber.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR5,
                            ),
                            child: Text(
                              "lbl_lachine".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 54.v),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: CustomRatingBar(
                              initialRating: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
            Container(
              height: 317.v,
              width: 184.h,
              margin: EdgeInsets.only(left: 13.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 300.v,
                      width: 184.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4417,
                            height: 300.v,
                            width: 184.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 56.v,
                                      width: 162.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: 139.h,
                                              child: Text(
                                                "msg_lebanese_restaurant".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelLargeWhiteA700Bold
                                                    .copyWith(
                                                  height: 1.30,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMdiFavouriteBorder,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 149.v),
                                  CustomElevatedButton(
                                    height: 33.v,
                                    width: 134.h,
                                    text: "lbl_order_now".tr,
                                  ),
                                  SizedBox(height: 20.v),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 31.v,
                                        width: 69.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.h,
                                          vertical: 4.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillWhiteA.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.customBorderLR5,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSettingsBlack900,
                                          height: 21.v,
                                          width: 34.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSettingsAmber400,
                                        height: 10.v,
                                        width: 11.h,
                                        margin: EdgeInsets.only(
                                          left: 18.h,
                                          top: 11.v,
                                          bottom: 9.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 7.h,
                                          top: 11.v,
                                          bottom: 6.v,
                                        ),
                                        child: Text(
                                          "lbl_free_delivery".tr,
                                          style: theme.textTheme.labelMedium,
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 51.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 133.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillAmber.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR5,
                            ),
                            child: Text(
                              "lbl_movepick".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 54.v),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: CustomRatingBar(
                              initialRating: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.h,
          right: 21.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 156.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      provider.homepageModelObj.thirtynineItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    ThirtynineItemModel model =
                        provider.homepageModelObj.thirtynineItemList[index];
                    return ThirtynineItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 32.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return SizedBox(
                  height: 9.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex,
                    count: provider.homepageModelObj.thirtynineItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return SizedBox(
      height: 304.v,
      width: 430.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 254.v,
              width: 430.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.gray4003f,
                    appTheme.whiteA700.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(27.h, 23.v, 27.h, 255.v),
            child: _buildNinetyOne(
              context,
              menu: "lbl_menu".tr,
              seeAll: "lbl_see_all".tr,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 28.h,
                top: 64.v,
                bottom: 200.v,
              ),
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 40.v,
                  width: 402.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 40.v,
                          width: 88.h,
                          decoration: BoxDecoration(
                            color: appTheme.red50001,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 9.v,
                            bottom: 12.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_fast_food".tr,
                                style: CustomTextStyles.titleSmallGray100,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_pakistani_food".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_chinese".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_italian".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_thai_food".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_turkish".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_afghani".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          _buildSixty(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 132.v,
        child: Consumer<HomepageProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 28.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 19.h,
                );
              },
              itemCount: provider.homepageModelObj.thirtyeightItemList.length,
              itemBuilder: (context, index) {
                ThirtyeightItemModel model =
                    provider.homepageModelObj.thirtyeightItemList[index];
                return ThirtyeightItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          top: 22.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 40.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_joybox_choice".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_view_all".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 278.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex1 = index;
                    },
                  ),
                  itemCount: provider.homepageModelObj.fortyoneItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    FortyoneItemModel model =
                        provider.homepageModelObj.fortyoneItemList[index];
                    return FortyoneItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 35.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 9.v,
                  margin: EdgeInsets.only(left: 167.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex1,
                    count: provider.homepageModelObj.fortyoneItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.whiteA700,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return SizedBox(
      height: 481.v,
      width: 430.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector706,
            height: 476.v,
            width: 429.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorAmber40051x430,
            height: 51.v,
            width: 430.h,
            alignment: Alignment.bottomCenter,
          ),
          _buildSixtyThree(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 190.v,
        width: 402.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "lbl_offers".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  right: 28.h,
                ),
                child: Text(
                  "lbl_view_all".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 171.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex2 = index;
                    },
                  ),
                  itemCount: provider.homepageModelObj.fortyItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    FortyItemModel model =
                        provider.homepageModelObj.fortyItemList[index];
                    return FortyItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_your_favourite_meal".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.v),
            child: Text(
              "lbl_view_all".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return SizedBox(
      height: 278.v,
      child: Consumer<HomepageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: provider.homepageModelObj.fortytwoItemList.length,
            itemBuilder: (context, index) {
              FortytwoItemModel model =
                  provider.homepageModelObj.fortytwoItemList[index];
              return FortytwoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildNinetyOne(
    BuildContext context, {
    required String menu,
    required String seeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          menu,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 3.v,
          ),
          child: Text(
            seeAll,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
