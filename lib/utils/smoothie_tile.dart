import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor; //dynamic porque es para color
  final String imageName;
  final VoidCallback onAdd;

  final String donutStore;
  const SmoothieTile({
    super.key,
    required this.donutFlavor,
    required this.donutStore,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.onAdd,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text('\$$donutPrice',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: donutColor[800])),
                  ),
                ],
              ),
              //*Donut price
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),

                //*Donut flavor
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  donutFlavor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: donutColor[800]),
                ),
              ),

              Text(
                donutStore,
                style: TextStyle(color: Colors.grey[800], fontSize: 20),
              ),
              //*Icons
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.pink,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.grey[800],
                      ),
                      onPressed: onAdd,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
