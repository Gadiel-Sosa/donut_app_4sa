import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String flavor, int price) onDonutAdded;
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Blueberry",
      "Yogen Früz",
      "79",
      Colors.blue,
      "lib/smoothie/blueberry.png"
    ],
    [
      "Chocolate",
      "Tropical Express",
      "90",
      Colors.red,
      "lib/smoothie/chocolate.png"
    ],
    [
      "Frutos Rojos",
      "McDonald's",
      "115",
      Colors.purple,
      "lib/smoothie/frutos_rojos.png"
    ],
    [
      "Mango",
      "Hawaiian Paradise",
      "80",
      Colors.brown,
      "lib/smoothie/Mango-Smoothie.png"
    ],
    ["Oreo", "MacDonald's", "120", Colors.blue, "lib/smoothie/oreo.png"],
    [
      "Verde",
      "SaladStop",
      "170",
      Colors.red,
      "lib/smoothie/Smoothies_Get-Shrekd.png"
    ],
    [
      "Yellow",
      "SaladStop",
      "130",
      Colors.purple,
      "lib/smoothie/Smoothies_Hello-Yellow.png"
    ],
    [
      "Pink Panther",
      "SaladStop",
      "150",
      Colors.brown,
      "lib/smoothie/Smoothies_Pink-Panther.png"
    ],
  ];

  SmoothieTab({super.key, required this.onDonutAdded});

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
          return SmoothieTile(
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
