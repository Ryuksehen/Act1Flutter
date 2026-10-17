import 'dart:io';
import '../lib/main.dart';
import '../lib/contact.dart';

void Add(List<Contacto> agenda) {
  print('Agregar Nuevo Contacto');
        // input Nombre
        stdout.write('Introduce el nombre: ');
        String? nombre = stdin.readLineSync();

        //input Telefono
        stdout.write('Introduce el telefono: ');
        String? telefono = stdin.readLineSync();

        // Validaciones de datos

        if (nombre != null &&
            nombre.isNotEmpty &&
            telefono != null &&
            telefono.isNotEmpty) {
          Contacto nuevoContacto = Contacto(nombre, telefono);
          // Se guarda en la lista de agenda
        agenda.add(nuevoContacto);

          print('Contacto guardado correctamente');
        } else {
          print('El nombre o el telefono no son validos, intente de nuevo');
        }
}
