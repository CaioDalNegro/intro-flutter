import 'package:flutter/material.dart';

class StatefullWidgetScreen extends StatefulWidget {
  const StatefullWidgetScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class _StateFullWidgetScreenState extends State<StatefullWidgetScreen> {

  var textoDaTela = 'Texto X';

  @override
  void initState() {
    super.initState();
    textoDaTela = 'Texto o initState';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Stateful Widget Example'),
    ),
    body: SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(textoDaTela),
          ElevatedButton(onPressed: () {
            setState(() {
              textoDaTela = 'Bem vindo a academia do flutter';
            });
          }, child: Text('Alterar o texto'),)
        ],
      ),
    ));
  }
}
