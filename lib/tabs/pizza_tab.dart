import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String flavor, int price) onDonutAdded;
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Champiñón", "Domino's", "169", Colors.blue, "lib/pizzas/champiñon.png"],
    ["Hawaiana", "Pizza Hut", "199", Colors.red, "lib/pizzas/hawaiana.png"],
    [
      "Pepperoni",
      "Little Caesars",
      "130",
      Colors.purple,
      "lib/pizzas/peperoni.png"
    ],
    ["Queso", "Little Caesars", "125", Colors.brown, "lib/pizzas/queso.png"],
    ["Salchicha", "Domino's", "215", Colors.blue, "lib/pizzas/salchicha.png"],
    ["Ternera", "Messinas's", "199", Colors.red, "lib/pizzas/ternera.png"],
    ["Yucateca", "SuperPizza", "250", Colors.purple, "lib/pizzas/yucateca.png"],
    [
      "Vegetariana",
      "Pizza Hut",
      "200",
      Colors.brown,
      "lib/pizzas/vegetariana.png"
    ],
  ];

  PizzaTab({super.key, required this.onDonutAdded});

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
          return PizzaTile(
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
