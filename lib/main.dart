import 'package:flutter/material.dart';
import 'package:myapp/controllers/cart_controller.dart';
import 'package:myapp/controllers/popular_product_controller.dart';
import 'package:myapp/controllers/recommended_product_controller.dart';
import 'package:myapp/pages/cart/cart_page.dart';
import 'package:myapp/pages/food/popular_food_detail.dart';
import 'package:myapp/pages/food/recommened_food_detail.dart';
import 'package:myapp/pages/home/food_page_body.dart';
import 'package:myapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/splash/splash_page.dart';
import 'package:myapp/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // home: SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
