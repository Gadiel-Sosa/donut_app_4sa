import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String flavor, int price) onDonutAdded;
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/Donas/ice_cream.png"],
    ["Fresa", "Dunkin'", "40", Colors.red, "lib/Donas/srawberry.png"],
    ["Azúcar", "Mi Ranchito", "18", Colors.purple, "lib/Donas/azucar.png"],
    ["Chocolate", "Chedraui", "7", Colors.brown, "lib/Donas/chocolate.png"],
    ["Chispas", "El Globo", "40", Colors.blue, "lib/Donas/chispas.png"],
    ["Glasse", "El Globo", "40", Colors.brown, "lib/Donas/glaseada.png"],
    ["Crunch", "Starbucks", "74", Colors.red, "lib/Donas/chruch.png"],
    ["Rellenas", "Krispy Kreme", "45", Colors.purple, "lib/Donas/rellena.png"],
  ];

  DonutTab({super.key, required this.onDonutAdded});

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
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),

        //* Sirve para generar cada elemento
        itemBuilder: (context, index) {
          return DonutTile(
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
