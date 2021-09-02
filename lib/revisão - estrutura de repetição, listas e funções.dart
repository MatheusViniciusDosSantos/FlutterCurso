import 'dart:io';

void main(List<String> args) {
  var valores = [];
  var verificador;

  print("Digite 5 numeros: ");
  for(int i = 0; i < 5; i++) {
    valores.add(stdin.readLineSync());
    valores[i] = double.parse(valores[i]);
  }

  print("Digite 1 para imprimir todos os valores digitados, 2 para realizar a soma deles, 3 para adicionar um valor");
  verificador = stdin.readLineSync();
  verificador = int.parse(verificador);

  if (verificador == 1) {
    imprimirValores(valores);
  } else if(verificador == 2) {
    print(somarValores(valores));
  } else if(verificador == 3) {
    var novoValor;
    print("Digite um novo valor: ");
    novoValor = stdin.readLineSync();
    novoValor = double.parse(novoValor);
    valores.add(novoValor);
    print(valores);
  } else {
    print("Voce digitou um valor inexistente para a pesquisa");
  }
  
}

void imprimirValores(List valores) {
  for(int i = 0; i < valores.length; i++) {
    print(valores[i]);
  }

}

double somarValores(List valores) {
  double soma = 0.0;
  for(int i = 0; i < valores.length; i++) {
    soma = soma + valores[i];
  }

  return soma;
}