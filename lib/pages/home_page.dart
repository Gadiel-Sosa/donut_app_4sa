import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //* se usa un controlador de pestañas por defecto
      length: myTabs.length, //* longitud de pestañas
      child: Scaffold(
        //* esqueleto de la app
        appBar: AppBar(
          //* AppBar se usa para la encabezado de la app
          backgroundColor: Colors
              .transparent, //*background se usa para el color de fondo de la app
          //icono izquierda
          leading: Padding(
            //* leading se usa para el espacio a la izquierda del icono
            padding:
                const EdgeInsets.only(left: 24.0), //esquina izq espacio de 24
            //* EdgeInsets se usa para definir el tamaño y posición de los elementos
            child: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
          ),
          actions: [
            //* actions se usa para los botones de la appBar
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          //* colum se usa para organizar widgets de forma vertical
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
            ),
            //2.- Pestaña (TabBar)
            TabBar(tabs: myTabs), //* TabBar se usa para las pestañas

            //3.- Contenido de pestañas (TabBarView)
            Expanded(
              //* Expanded se usa para expandir un widget
              child: TabBarView(children: [
                //* TabBarView se usa para mostrar contenido de pestañas
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab(),
              ]),
            ),
            //*4.- Carrito (Cart)
            ShoppingCart()
          ],
        ),
      ),
    );
  }
}
