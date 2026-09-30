import 'package:flutter/material.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Bar inicial',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('x'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Text('X'), label: 'x'),
          BottomNavigationBarItem(icon: Text('Y'), label: 'y'),
        ],
      ),
      body: Text('teste'),
    );
  }
}
