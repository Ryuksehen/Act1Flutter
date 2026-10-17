import 'dart:io';

// Clase horno
class Horno {
  double celsius;
  double fahrenheit;

  // Constructor de la clase
  Horno({required this.celsius, required this.fahrenheit});

  // Metodo para convertir a fahrenheit
  void convertirAFahrenheit() {
    fahrenheit = (celsius * 9/5) + 32;
  }

  // Metodo para convertir a celsius
  void convertirACelsius() {
    celsius = (fahrenheit - 32) * 5/9;
  }

  // Metodo para mostrar los resultados
  void mostrarResultados() {
    print("Celsius: $celsius");
    print("Fahrenheit: $fahrenheit");
  }
}

void main() {
  // Entradas
  stdout.write("Ingrese el valor en celsius: ");
  String? celsius = stdin.readLineSync() ?? "0";

  if (celsius.trim().isEmpty) {
    print("Valor no valido.");
    return;
  }

  double celsiusDouble = double.tryParse(celsius) ?? 0.0;

  // Instanciamos el objeto horno
  Horno horno = Horno(celsius: celsiusDouble, fahrenheit: 0.0);

  // Ejecutamos los comportamientos del objeto
  horno.convertirAFahrenheit();
  horno.mostrarResultados();
}

