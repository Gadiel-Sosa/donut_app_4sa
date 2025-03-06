import 'package:donut_app_4sa/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //* MaterialApp se usa para la configuración de la app
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple), //* Color de la app
          useMaterial3: true,
          tabBarTheme: const TabBarTheme(
            indicatorColor: Colors.pink,
          )),
      home: const HomePage(),
    );
  }
}
