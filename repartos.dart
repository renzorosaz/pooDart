import 'dart:math';

import 'punto.dart';
import 'tienda.dart';

void main() {
  Punto miCasa = new Punto(0, 0);
  List<Tienda> tiendas = new List();

  tiendas.add(new Tienda("Mi tiendita", new Punto(5, 6)));
  tiendas.add(new Tienda("Mi tiendita 2 ", new Punto(-2, 3)));
  tiendas.add(new Tienda("Nuestra tiendita", new Punto(1, 1)));
  tiendas.sort((a,b) => (a.ubicacion-miCasa).compareTo(b.ubicacion-miCasa));
  print(tiendas);
 /*  
  print(tiendas[0].ubicacion - tiendas[1].ubicacion); */
  /* Tienda cercana= tiendas[0];
  for(int i=0; i<tiendas.length;i++){
    if(cercana.ubicacion - miCasa > tiendas[i].ubicacion- miCasa){
      cercana= tienda[i];
    }
  } */
}
