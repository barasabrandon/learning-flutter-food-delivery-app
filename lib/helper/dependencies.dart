import 'package:get/get.dart';
import 'package:myapp/controllers/cart_controller.dart';
import 'package:myapp/controllers/popular_product_controller.dart';
import 'package:myapp/controllers/recommended_product_controller.dart';
import 'package:myapp/data/api/api_client.dart';
import 'package:myapp/data/repository/cart_repo.dart';
import 'package:myapp/data/repository/popular_product_repo.dart';
import 'package:myapp/data/repository/recommended_product_repo.dart';
import 'package:myapp/pages/food/popular_food_detail.dart';
import 'package:myapp/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
