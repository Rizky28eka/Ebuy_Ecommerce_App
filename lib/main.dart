import 'package:ebuy_ecommerceapp/view/main_tab/main_tabview.dart';
import 'package:flutter/material.dart';

import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EBuy Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "San Francisco Display",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const MainTabView(),
    );
  }
}
