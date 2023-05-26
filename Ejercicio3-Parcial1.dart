import 'dart:io';
import 'dart:math';

void main() {
  // Primera y segunda lista son generadas de forma aleatoria y tiene 10 elementos
  List<int> lista1 = generarListaAleatoria();
  List<int> lista2 = generarListaAleatoria();
  // Tercera matriz se debe ingresar por teclado y deben ser 5 elementos enteros
  List<int> lista3 = ingresarListaPorTeclado();

  List<int> listaConcatenada = [];
  listaConcatenada.addAll(lista1);
  listaConcatenada.addAll(lista2);
  listaConcatenada.addAll(lista3);

  double promedio = obtenerPromedio(listaConcatenada);

  listaConcatenada.sort();

  print('Lista concatenada: $listaConcatenada');
  print('Promedio: $promedio');
  print('Lista ordenada: $listaConcatenada');
}

List<int> generarListaAleatoria() {
  Random random = Random();
  List<int> lista = [];
  for (int i = 0; i < 10; i++) {
    int elemento = random.nextInt(11) + 10; // Genera un número entre 10 y 20
    lista.add(elemento);
  }
  return lista;
}

List<int> ingresarListaPorTeclado() {
  List<int> lista = [];
  print('Ingrese 5 elementos enteros:');
  for (int i = 0; i < 5; i++) {
    int elemento = int.parse(stdin.readLineSync()!);
    lista.add(elemento);
  }
  return lista;
}

double obtenerPromedio(List<int> lista) {
  int suma = lista.reduce((a, b) => a + b);
  double promedio = suma / lista.length;
  return promedio;
}
