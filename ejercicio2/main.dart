import 'fecha.dart';

void main() {

  print(encontrar([1, 2, 3,4], 5));

}

int sumalista() {}

bool encontrar(List<int> numeros, int n) {
  int sumaList = 0;

  for (int i = 0; i < numeros.length; i++) {    
    for(int m=0; m<i ;m++){
      sumaList+=i;
    }    
  }
  if(sumaList>n){
    return true;
  }else{
    return false;
  }
   print(sumaList);
}
