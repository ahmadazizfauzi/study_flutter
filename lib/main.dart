import 'package:flutter/material.dart';
import 'package:study_flutter/core/routes/app_pages.dart';
import 'package:study_flutter/core/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.newspage, // Mengarahkan ke halaman home
      routes: AppPages.pages, // Menggunakan routes dari AppPages
      
    );
  }
}
