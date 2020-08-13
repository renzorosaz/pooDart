import 'dart:io';

void main() {

  /* var ejemplo=[
    [3,2,4],
    [0,1,5],
    [0,0,2]
  ];
  esTriangularSuperior(ejemplo); */
 /*  var cuadradoMagico = obtenerCuadradoMagico(3);
  imprimirLista(cuadradMagico); */
}
List restaMatrices(var m1, var m2){
  List respuesta = [];

  for(var i=0;i<m1.length;i++){
    respuesta.add([]);
    for(var j=0;j<m1.length; j++){
      respuesta[i].add(m1[i][j] - m2[i][j]);
    }
  }
  return respuesta;
}

List sumaMatrices(var m1, var m2){
  List respuesta = [];

  for(var i=0;i<m1.length;i++){
    respuesta.add([]);
    for(var j=0;j<m1.length; j++){
      respuesta[i].add(m1[i][j] + m2[i][j]);
    }
  }
  return respuesta;
}

bool sonIguales(List l1,List l2){
  if(l1.length != l2.length) return false;
  for(var i=0;i<l1.length;i++){
   if(l1[i].length !=l2[i].length)return false;
   for(var j =0;j<l2[i].lenght;j++){
     if(l1[i][j] != l2[i][j]){
       return false;
     }
   }
  }
  return true;
}

bool esTriangularSuperior(List<List<int>> l) {
  for (int i = 0; i < l.length; i++) {
    for (int j = 0; j < i; j++) {
      if (l[i][j] != 0) return false;
    }
  }
  return true;
}


void imprimirLista(List l) {
  String filaprint = " ";
  l.forEach((fila) => {print(fila.join("\t"))});
}

void imprimirLista2(List l) {  
  l.forEach(imprimirFila);
}

void imprimirFila(var fila){
  String filaimpresa="";
  fila.forEach((alumno) => {filaimpresa += "${alumno} \t"});
  print(filaimpresa);
}

List llenarAlumnos() {
  List<String> alumnos = [];
  /*  String nombre= stdin.readLineSync();
  List<String> alumnosOrdenados=ordenarListaAf(alumnos); */
  alumnos.sort((val1, val2) => val1.length.compareTo(val2.length));
  imprimirListaAlumnos(alumnos);
}

int compararTamanioString(String a, String b) {
  if (a.length > b.length) {
    return 1;
  }
  return 0;
}

List ordenarListaAlf(List<String> alumnos) {
  alumnos.sort();
  return alumnos;
}

void imprimir(var indice, var valor) {
  print("${indice + 1}. - ${valor}");
}

void imprimirListaAlumnos2(List alumnos) {
  alumnos.forEach((alumno) => {print(alumno)});
}

void imprimirListaAlumnos(List alumnos) {
  for (int i = 0; i < alumnos.length; i++) {
    print('${i + 1}.- ${alumnos[i]}');
  }
}
