import 'package:flutter/material.dart';
import 'package:myapp/pages/food/popular_food_detail.dart';
import 'package:myapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PopularFoodDetail(),
    );
  }
}
