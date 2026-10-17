import 'dart:io';

import '../lib/contact.dart';

void EliminarContacto(List<Contacto> agenda) {
  // Eliminar Contacto
  stdout.write('Ingrese el nombre del contacto que desea eliminar: ');
  String? eliminar = stdin.readLineSync();
  if (eliminar != null && eliminar.trim().isNotEmpty) {
    int cantidadanterior = agenda.length;
    agenda.removeWhere(
      (c) => c.nombre.toLowerCase() == eliminar.trim().toLowerCase(),
    );
    if (agenda.length < cantidadanterior) {
      print('Contacto eliminado con exito');
    } else {
      print('No se encontro ningun contacto con este nombre');
    }
  } else {
    print('Nombre no valido');
  }
}
