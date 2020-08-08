import 'rectangulo.dart';
import 'triangulo.dart';

void main(List<String> args){

  Rectangulo r= new Rectangulo(3,4);  
  Triangulo t= new Triangulo(100,200,300);
  imprimirCaracteristicas(t);
  
}

void imprimirCaracteristicas(FiguraGeometrica figuraGeometrica){
  print(figuraGeometrica.obtenerArea());
  print(figuraGeometrica.obtenerPerimetro());
}