import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/homepage_model.dart';
import '../models/thirtynine_item_model.dart';
import '../models/thirtyeight_item_model.dart';
import '../models/fortyone_item_model.dart';
import '../models/forty_item_model.dart';
import '../models/fortytwo_item_model.dart';

/// A provider class for the HomepagePage.
///
/// This provider manages the state of the HomepagePage, including the
/// current homepageModelObj
class HomepageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomepageModel homepageModelObj = HomepageModel();

  int sliderIndex = 0;

  int sliderIndex1 = 0;

  int sliderIndex2 = 0;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
