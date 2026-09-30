import 'package:flutter/material.dart';

class WidgetsBasicos extends StatelessWidget {
  const WidgetsBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Básicos'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Center(child: Text('Texto Qualquer 1')),
            Center(child: Text('Texto Qualquer 2')),
            Center(
              child: Text(
                'Texto Qualquer 3',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.android,
                  size: 40,
                  color: Colors.green,
                ),
                Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                ),
                Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR194awejr_cJaCt6ASfS4wgK7HKPB7f_s6M_TwamD6T2NNSiYRoHuEkvg&s=10',
              ),
            ),

            ElevatedButton(onPressed: () {}, child: Text('Botao de elevaçao')),
            TextButton(onPressed: () {}, child: Text('Botao de Texto'))
          ],
        ),
      ),
    );
  }
}
