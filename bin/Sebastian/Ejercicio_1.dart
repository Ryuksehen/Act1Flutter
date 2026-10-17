import 'dart:io';

// Clase automovil
class Automovil {
  int velocidad;
  int tiempo;

  // Constructor de la clase
  Automovil({required this.velocidad, required this.tiempo});

  // Metodo para calcular distancia
  int calcularDistancia() {
    return velocidad * tiempo;
  }

  // Metodo para mostrar los resultados
  void mostrarResultados() {
    int distancia = calcularDistancia();
    print("La distancia recorrida es: $distancia");
  }
}

void main() {
  // Entradas
  stdout.write("Ingrese la velocidad del automovil: ");
  String? velocidad = stdin.readLineSync() ?? "0";

  if (velocidad.trim().isEmpty) {
    print("Velocidad no valida.");
    return;
  }

  int velocidadInt = int.tryParse(velocidad) ?? 0;

  stdout.write("Ingrese el tiempo del recorrido: ");
  String? tiempo = stdin.readLineSync() ?? "0";

  if (tiempo.trim().isEmpty) {
    print("Tiempo no valido.");
    return;
  }

  int tiempoInt = int.tryParse(tiempo) ?? 0;

  Automovil automovil = Automovil(velocidad: velocidadInt, tiempo: tiempoInt);

  // Ejecutamos los comportamientos del objeto
  automovil.mostrarResultados();
}