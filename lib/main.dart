import 'package:eco_aware/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EcoAware",
      theme: ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const WidgetTree(),
    );
  }
}
