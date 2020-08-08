class Rectangulo{
  double base;
  double altura;

  Rectangulo(double base, double altura){
    this.altura=altura;
    this.base=base;
  }

  double obtenerArea(){
    return base*altura;
  }
}