import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Belajar Flutter',
      
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        brightness: Brightness.light,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple.shade400,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      
      ),
      initialRoute: AppRoutes.home, 
      getPages: AppPages.routes, 
    );
  }
}