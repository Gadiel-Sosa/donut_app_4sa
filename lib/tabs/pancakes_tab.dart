import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String flavor, int price) onDonutAdded;
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Blueberry",
      "Brunch & Munch",
      "189",
      Colors.blue,
      "lib/pancakes/blueberry.png"
    ],
    [
      "Chocolate",
      "La Panquequeria",
      "166",
      Colors.red,
      "lib/pancakes/chocolate.png"
    ],
    [
      "Original",
      "Órale Desayunos",
      "165",
      Colors.purple,
      "lib/pancakes/clasicos.png"
    ],
    [
      "Strawberry",
      "Brunch & Munch",
      "169",
      Colors.brown,
      "lib/pancakes/fresa.png"
    ],
    [
      "Integral",
      "Órale Desayunos",
      "190",
      Colors.blue,
      "lib/pancakes/integrales.png"
    ],
    ["Oreo", "Brunch & Munch", "150", Colors.red, "lib/pancakes/oreo.png"],
    [
      "Relleneo",
      "La Panquequeria",
      "120",
      Colors.purple,
      "lib/pancakes/Relleno.png"
    ],
    [
      "Yogurt",
      "Brunch & Munch",
      "195",
      Colors.brown,
      "lib/pancakes/yogurt.png"
    ],
  ];

  PancakesTab({super.key, required this.onDonutAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //* Encargado de generar la rejilla (como se ve en pantalla)
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //*!Proporcion
          childAspectRatio: 1 / 1.8,
        ),
        //* Cuantos elementos
        itemCount: 8,
        padding: const EdgeInsets.all(12),

        //* Sirve para generar cada elemento
        itemBuilder: (context, index) {
          return PancakesTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
            // Llamada a callback
            onAdd: () {
              onDonutAdded(
                donutsOnSale[index][0],
                int.parse(donutsOnSale[index][2]),
              );
            },
          );
        });
  }
}
