import 'package:flutter/material.dart';
import 'package:icecreamlovers/pages/home_page.dart';
import 'package:icecreamlovers/themes/material_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ice Cream Lovers',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.lightScheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.darkMediumContrastScheme(),
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
