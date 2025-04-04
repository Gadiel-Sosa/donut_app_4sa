import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Big Bacon",
      "Wendy's",
      "170",
      Colors.blue,
      "lib/hamburguesa/big_bacon_wendys.png"
    ],
    ["Big Mac", "McDonald's", "129", Colors.red, "lib/hamburguesa/Big_Mac.png"],
    [
      "Crispy Bacon",
      "Big Apple",
      "169",
      Colors.purple,
      "lib/hamburguesa/crispy_bacon.png"
    ],
    [
      "Grill Burger",
      "Texas Burger",
      "149",
      Colors.brown,
      "lib/hamburguesa/grill_burger.png"
    ],
    [
      "McPollo",
      "MacDonald's",
      "89",
      Colors.blue,
      "lib/hamburguesa/mcpollo.png"
    ],
    [
      "McTocino",
      "MacDonald's",
      "155",
      Colors.red,
      "lib/hamburguesa/mctocino.png"
    ],
    [
      "Whopper",
      "Burger King",
      "179",
      Colors.purple,
      "lib/hamburguesa/whopper.png"
    ],
    [
      "Whopper Jr",
      "Burger King",
      "109",
      Colors.brown,
      "lib/hamburguesa/WhopperJR-Doble.png"
    ],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //* Encargado de generar la rejilla (como se ve en pantalla)
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //*!Proporcion
          childAspectRatio: 1 / 1.6,
        ),
        //* Cuantos elementos
        itemCount: 8,
        padding: const EdgeInsets.all(12),

        //* Sirve para generar cada elemento
        itemBuilder: (context, index) {
          return BurgerTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          ); //tile azulejos
        });
  }
}
