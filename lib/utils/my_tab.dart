import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  // Ruta de la imagen en la compu
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        //* conteiner se usa para dar estilo al tab
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            //BORDE REDONDO
            borderRadius: BorderRadius.circular(16)),
        child:
            Image.asset(iconPath, color: Colors.grey[600]), //ruta dela rchivo
        // asset se utiliza para cargar imagenes en flutter localmente
      ),
    );
  }
}
