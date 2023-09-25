import 'package:get/get.dart';
import 'package:myapp/pages/food/popular_food_detail.dart';
import 'package:myapp/pages/food/recommened_food_detail.dart';
import 'package:myapp/pages/home/main_food_page.dart';

class RouteHelper {
  static const initial = "/";
  static const popularFood = "/popular-food";
  static const recommendedFood = "/recommended-food";

  static String getInitial() => "$initial";
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn)
  ];
}
