import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize
            .min, // Esto hace que la columna tome el mínimo espacio necesario
        mainAxisAlignment:
            MainAxisAlignment.center, // Centra los elementos verticalmente
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              iconPath,
              color: Colors.grey[600],
              height: 24, // Controla el tamaño de la imagen
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(label,
              style: TextStyle(
                  fontSize: 12)) // Ajusta el tamaño del texto si es necesario
        ],
      ),
    );
  }
}
