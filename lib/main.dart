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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      routes: {
        '/': (context) => MenuPrincipal(),
        '/hello': (context) => HelloWorldScreen(),
        '/scaffold': (context) => ScaffoldScreen(),
        '/statefull': (context) => StatefullWidgetScreen(),
        '/widgets-basicos': (context) => WidgetsBasicos(),
      },
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/hello');
                },
                title: Text('Hello World'),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/scaffold');
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/hello', (route) {
                        return true;
                      },);
                },
                title: Text('Scaffold Example'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
