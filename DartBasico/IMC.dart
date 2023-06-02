import 'dart:ffi';
import 'dart:io';

void main(){
  print ('Qual o seu peso?');
  String? entradaPeso = stdin.readLineSync();
  print ('Qual sua altura em metros?');
  String? entradaAltura = stdin.readLineSync();

  if(entradaPeso != null && entradaAltura != null){
    double peso = double.parse(entradaPeso);
    double altura = double.parse(entradaAltura);
    double imc;
    imc = peso / (altura * altura);
    String imcFormatado = imc.toStringAsFixed(2);
    print('Seu IMC é: $imcFormatado');
  }else {
    print('Peso ou altura inválidos.');
  }
}