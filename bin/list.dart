import 'dart:io';

import '../bin/add.dart';
import '../lib/contact.dart';
import '../lib/main.dart';

void list(List<Contacto> agenda) {
  print('Lista de contacto');

  // Validamos si hay contactos en la lista
  if (agenda.isEmpty) {
    print('La agenda esta vacia, agregue un contacto nuevo "Opcion 1"');
  }
  // Si hay contacto los mostramos
  else {
    int contador = 1;
    for (var contacto in agenda) {
      print('$contador. Nombre: ${contacto.nombre} | Telefono: ${contacto.telefono}');
    }
  }
}
