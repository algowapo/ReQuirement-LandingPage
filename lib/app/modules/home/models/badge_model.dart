import 'package:landing_page/utils/constants/constants.dart';

class BadgeModel {
  String? mainText;
  String? secondaryText;
  String? iconRoute;

  BadgeModel({this.mainText, this.secondaryText, this.iconRoute});
}

List<BadgeModel> badgesList = [
  BadgeModel(
    mainText: badge1MainText,
    secondaryText: badge1SecondaryText,
    iconRoute: badge1IconRoute,
  ),
  BadgeModel(
    mainText: badge2MainText,
    secondaryText: badge2SecondaryText,
    iconRoute: badge2IconRoute,
  ),
  BadgeModel(
    mainText: badge3MainText,
    secondaryText: badge3SecondaryText,
    iconRoute: badge3IconRoute,
  ),
];
