import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //* Encargado de generar la rejilla (como se ve en pantalla)
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //* Cuantos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //* Sirve para generar cada elemento
        itemBuilder: (context, index) {
          return;
        });
  }
}
