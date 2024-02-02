import 'package:flutter/material.dart';
import 'package:sudo_keys/botonNavegacion/activaciones.dart';
import 'package:sudo_keys/botonNavegacion/inicio.dart';
import 'package:sudo_keys/botonNavegacion/productos.dart';

class rutas extends StatelessWidget {
  final int index;
  const rutas({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const inicio(),
      const productos(),
      const activaciones()
    ];
    return myList[index];
  }
}
