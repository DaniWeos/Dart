void main() {
  String nome = "Goiaba";
  double peso = 98;
  int diasDesdeColheita = 30;
  int diasParaMadura = 10;
  bool estaMadura = funcEstaMadura(diasParaMadura);
  String textoMadura;

  if (estaMadura == true){
    textoMadura = ("esta madura!");
  }else{
    textoMadura = ("não esta madura");
  }

  print("A $nome pesa $peso gramas! Ela foi colhida há $diasDesdeColheita e precisa"
      "de $diasParaMadura para amadurecer, logo, a $nome $textoMadura");
}

bool funcEstaMadura (int dias){
  if (dias >= 20) {
    return true;
  } else {
    return false;
  }
}
