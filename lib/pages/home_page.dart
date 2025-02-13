import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //icono izquierda
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 24.0), //esquina izq espacio de 24
          child: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        //1.- Texto principal (Text)
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0), // envoltorio edge es borde
            child: Row(
              children: [
                Text(
                  "I want to ",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Eat",
                  style: TextStyle(
                      // tamaño letra
                      fontSize: 32,
                      //negritas
                      fontWeight: FontWeight.bold,
                      // subrayado
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          )
          //2.- Pestaña (TabBar)
          //3.- Contenido de pestañas (TabBarView)
          //4.- Carrito (Cart)
        ],
      ),
    );
  }
}
