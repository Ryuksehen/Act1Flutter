import 'dart:io';

// Clase Serie fibonacci
class SerieFibonacci {
  int limite;

  // Constructor de la clase
  SerieFibonacci({required this.limite});

// Metodo para calcular la serie
void generarSerie() {
  int actual = 1;
  int siguiente = 1;

print ("Serie Fibonacci hasta menor o igual a $limite:");

// Ciclo para generar la serie
while (actual <= limite) {
  stdout.write("$actual ");

// Guardar suma temporal
int temporal = actual + siguiente;
actual = siguiente;
siguiente = temporal;
}

print ("");
}
}

void main() {
  SerieFibonacci serieFibonacci = SerieFibonacci(limite: 100);

// Ejecutamos los comportamientos del objeto
serieFibonacci.generarSerie();
} 