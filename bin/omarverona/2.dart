/* 1. Se desea calcular la distancia recorrida (D) por un automóvil que tiene velocidad constante (m/s) durante un tiepo T (Sg),
 considerar que es un MRU (Movimiento Rectilíneo Uniforme). Tenga en cuenta que la formula del movimiento rectilíneo es:
D = V * T */

import 'dart:io';

// Clase Calsular Distancia
class CalcularDistancia {
  double velocidad;
  int tiempo;
  // Constructor
  CalcularDistancia({required this.velocidad, required this.tiempo});

  // Metodo de D = V * T
  double recorridoCal() {
    double d = velocidad * tiempo;
    return d;
  }
}

void main() {
  stdout.write('Ingrese la velocidad: ');
  String? velIn = stdin.readLineSync();

  if (velIn == null || velIn.trim().isEmpty) {
    print('Error: No se registro ninguna velocidad');
    return;
  }
  // conversion a decimal
  double? velDouble = double.tryParse(velIn) ?? 0;

  


  //=============================

  stdout.write('Ingrese el tiempo: ');
  String? tiemIn = stdin.readLineSync();

  if (tiemIn == null || tiemIn.trim().isEmpty) {
    print('Error: No se registro el tiempo');
    return;
  }

  int? tiemInt = int.tryParse(tiemIn) ?? 0;


  //==============================

  // creamos un objeto
  CalcularDistancia recorrido1 = CalcularDistancia(
    velocidad: velDouble,
    tiempo: tiemInt,
  );

  recorrido1.recorridoCal();
}
