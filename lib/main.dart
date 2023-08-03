import 'package:flutter/material.dart';
import 'package:storeapp/core/routes/routes.dart';
import 'package:storeapp/pages/home_page.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: routes.Home  ,
      routes: {
   routes.Home : (context)=> HomePage(),

      }
    );
  }
}
