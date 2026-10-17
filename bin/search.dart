import 'dart:io';

import '../lib/contact.dart';

void BuscarContacto(List<Contacto> agenda) {
  // Buscar Contacto
  stdout.write('Ingrese el nombre que desea buscar: ');
  String? buscar = stdin.readLineSync();
  if (buscar != null && buscar.trim().isNotEmpty) {
    var encontrados = agenda
        .where(
          (c) => c.nombre.toLowerCase().contains(buscar.trim().toLowerCase()),
        )
        .toList();
    if (encontrados.isEmpty) {
      print('No se encontro ningun contacto ');
    } else {
      print('\n--- Resultados de la busqueda ---');
      for (var c in encontrados) {
        print('Nombre: ${c.nombre} - telefono: ${c.telefono}');
      }
    }
  } else {
    print('Busqueda invalida');
  }
}
