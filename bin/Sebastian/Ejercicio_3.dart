import 'dart:io';
import 'dart:math';

// Clase triangulo rectangulo
class TrianguloRectangulo {
  double a;
  double b;

  // Constructor de la clase
  TrianguloRectangulo({required this.a, required this.b});

  // Metodo para calcular la hipotenusa
  double calcularHipotenusa() {
    // Aplicando la formula
    return sqrt(pow(a, 2) + pow(b, 2));
  }

  // Metodo para mostrar los resultados
  void mostrarResultados() {
    double hipotenusa = calcularHipotenusa();
    print("Cateto a: $a");
    print("Cateto b: $b");
    print("La hipotenusa (H) es: $hipotenusa");
  }
}

void main() {
  // Entradas para el cateto a
  stdout.write("Ingrese el valor del cateto a: ");
  String? inputA = stdin.readLineSync() ?? "0";

  if (inputA.trim().isEmpty) {
    print("Valor no válido.");
    return;
  }

  double a = double.tryParse(inputA) ?? 0.0;

  // Entradas para el cateto b
  stdout.write("Ingrese el valor del cateto b: ");
  String? inputB = stdin.readLineSync() ?? "0";

  if (inputB.trim().isEmpty) {
    print("Valor no válido.");
    return;
  }

  double b = double.tryParse(inputB) ?? 0.0;

  // Instanciamos el objeto del triangulo rectangulo
  TrianguloRectangulo triangulo = TrianguloRectangulo(a: a, b: b);

  // Ejecutamos los comportamientos del objeto
  triangulo.mostrarResultados();
}