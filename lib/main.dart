import 'dart:io';

import '../bin/add.dart';
import '../bin/list.dart';

import 'contact.dart';

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
        // Importamos el metodo/funcion de listar y pasamos nustra lista agenda
        list(agenda);
        break;
      case '3':
        // TODO: Aprendiz 3 - Implementar lógica para buscar
        break;
      case '4':
        // TODO: Aprendiz 3 - Implementar lógica para eliminar
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
