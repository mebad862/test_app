import 'thirtynine_item_model.dart';
import '../../../core/app_export.dart';
import 'thirtyeight_item_model.dart';
import 'fortyone_item_model.dart';
import 'forty_item_model.dart';
import 'fortytwo_item_model.dart';

class HomepageModel {
  List<ThirtynineItemModel> thirtynineItemList =
      List.generate(1, (index) => ThirtynineItemModel());

  List<ThirtyeightItemModel> thirtyeightItemList = [
    ThirtyeightItemModel(
        theEastEnd: "The East End",
        theEastEnd1: ImageConstant.imgRectangle4684),
    ThirtyeightItemModel(
        theEastEnd: "Bam-Bau ", theEastEnd1: ImageConstant.imgRectangle4685)
  ];

  List<FortyoneItemModel> fortyoneItemList = [
    FortyoneItemModel(
        macComboDeal: "Mac Combo Deal",
        favorite: ImageConstant.imgFavorite,
        burgerFriseDrink: "Burger+Frise+Drink",
        rs: "Rs. 799.00",
        imageNineteen: ImageConstant.imgImage19),
    FortyoneItemModel(imageNineteen: ImageConstant.imgImage24)
  ];

  List<FortyItemModel> fortyItemList = [
    FortyItemModel(
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
