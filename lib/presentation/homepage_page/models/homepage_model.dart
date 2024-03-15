import 'thirtynine_item_model.dart';
import '../../../core/app_export.dart';
import 'traditional_item_model.dart';
import 'menu_item_model.dart';
import 'forty_item_model.dart';
import 'fortytwo_item_model.dart';

class HomepageModel {
  List<ThirtynineItemModel> thirtynineItemList =
      List.generate(1, (index) => ThirtynineItemModel());

  List<TradtionalRestaurantsItemModel> tradtionalRestaurantsItemList = [
    TradtionalRestaurantsItemModel(
        theEastEnd: "The East End",
        theEastEnd1: ImageConstant.imgRectangle4684),
    TradtionalRestaurantsItemModel(
        theEastEnd: "Bam-Bau ", theEastEnd1: ImageConstant.imgRectangle4685),
    TradtionalRestaurantsItemModel(
        theEastEnd: "Lotus Court", theEastEnd1: ImageConstant.imgRectangle4685)
  ];

  List<MenuItemModel> JoyBoxChoiceItem = [
    MenuItemModel(
        macComboDeal: "Mac Combo Deal",
        favorite: ImageConstant.imgFavorite,
        burgerFriseDrink: "Burger+Frise+Drink",
        rs: "Rs. 799.00",
        imageNineteen: ImageConstant.imgImage19),
    MenuItemModel(imageNineteen: ImageConstant.imgImage24)
  ];

  List<OfferItemModel> fortyItemList = [
    OfferItemModel(
        getOffClock: "Get 20% Off Clock Tower",
        ramadanOffer: "Ramadan Offer",
        image: ImageConstant.imgGroup38289,
        image1: ImageConstant.imgMaskGroup)
  ];

  List<FortytwoItemModel> fortytwoItemList = [
    FortytwoItemModel(pngwing: ImageConstant.imgPngwing66),
    FortytwoItemModel(pngwing: ImageConstant.imgImage16)
  ];
}
