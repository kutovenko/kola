import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kola/feature/start_screen/search_screen.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Kola',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: SearchScreen(),
  ));
}
