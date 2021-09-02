import 'dart:io';

void main(List<String> args) {
  var valor1, valor2;
  print("Digite um valor para ser realizada uma ação: ");
  valor1 = stdin.readLineSync();
  valor1 = double.parse(valor1);

  print("Digite 1 para somar 2 o valor informado, digite 2 para multiplicar por 2 o valor informado, digite 3 para dividir o valor informado: ");
  valor2 = stdin.readLineSync();
  valor2 = double.parse(valor2);
  if (valor2 == 1) {
    valor1 = valor1 + 2;
    print(valor1);
    
  } else {
    if (valor2 == 2) {
      valor1 = valor1 * 2;
      print(valor1);
    } else {
      if (valor2 == 3) {
        valor1 = valor1/2;
        print(valor1);

      } else {
        print("Opção inválida");
      }
    }
  }
}