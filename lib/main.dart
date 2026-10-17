import 'dart:io';
import 'contact.dart';

import '../bin/add.dart';
import '../bin/delete.dart';
import '../bin/list.dart';
import '../bin/search.dart';

// El Aprendiz 2 definirá los atributos de esta clase

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        Add(agenda);

        break;
      case '2':
        // Importamos el metodo/funcion de listar y pasamos nuestra lista agenda
        list(agenda);
        break;
      case '3':
        // Importamos el metodo/funcion de buscar y pasamos nuestra lista agenda
        BuscarContacto(agenda);
        break;
      case '4':
        // Importamos el metodo/funcion de eliminar y pasamos nuestra lista agenda
        EliminarContacto(agenda);
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
