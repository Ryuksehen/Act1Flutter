import 'dart:io';

// Clase empleado
class Empleado {
  String nombre;
  int horasLaboradas;
  int tarifaPorHora;

  // Constructor de la clase
  Empleado(this.nombre, this.horasLaboradas, this.tarifaPorHora);

  // Metodo para calcular salario
  int calcularSalario() {
    return horasLaboradas * tarifaPorHora;
  }

  // Metodo para mostrar los resultados
  void mostrarResultados() {
    int salario = calcularSalario();
    print("Nombre del empleado: $nombre");
    print("Cantidad de horas laboradas: $horasLaboradas");
    print("Total devengado: $salario");
  }
}

void main() {
  // Entradas
  stdout.write("Ingrese el nombre del empleado: ");
  String? nombre = stdin.readLineSync() ?? "0";

  if (nombre.trim().isEmpty) {
    print("Nombre no valido.");
    return;
  }

  stdout.write("Ingrese la cantidad de horas trabajadas: ");
  String? horasLaboradas = stdin.readLineSync() ?? "0";

  if (horasLaboradas.trim().isEmpty) {
    print("Horas laboradas no valido.");
    return;
  }

  int horasLaboradasInt = int.tryParse(horasLaboradas) ?? 0;

  stdout.write("Ingrese la tarifa por hora del empleado: ");
  String? tarifaPorHora = stdin.readLineSync() ?? "0";

  if (tarifaPorHora.trim().isEmpty) {
    print("Tarifa por hora no valido.");
    return;
  }

  int tarifaPorHoraInt = int.tryParse(tarifaPorHora) ?? 0;

  Empleado empleado = Empleado(nombre, horasLaboradasInt, tarifaPorHoraInt);

  // Ejecutamos los comportamientos del objeto
  empleado.mostrarResultados();
}