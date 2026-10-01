import 'package:flutter/material.dart';
import 'package:flutter_into/hello_world/hello_world_screen.dart';
import 'package:flutter_into/scaffold_example/scaffold_screen.dart';
import 'package:flutter_into/statefull_widget_example/statefull_widget_screen.dart';
import 'package:flutter_into/widgets_basicos/widgets_basicos.dart';

void main() {
  runApp(FlutterIntroApp());
}

class FlutterIntroApp extends StatelessWidget {
  const FlutterIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Introduçao',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      home: StatefullWidgetScreen(),
    );
  }
}
