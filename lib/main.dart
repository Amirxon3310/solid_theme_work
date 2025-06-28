import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_theme_work/controller/product_controller.dart';
import 'package:solid_theme_work/views/pages/home_page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductController(client: http.Client()),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
