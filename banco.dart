import 'dart:io';
import 'cuenta.dart';

import 'banco1.dart';

Banco cajaCodigo;

void main() {
  cajaCodigo = new Banco();
  print("Bienvenido a nuestro banco");
  print("Digite: ");
  print("1 para ingresar a su cuenta ");
  print("2 para ingresar a su cuenta ");
  String opcion = stdin.readLineSync();
  if (opcion == "1") {
   ConsultarCuenta();
  } else if (opcion == "2") {
    CrearNuevaCuenta();
  }
}

void ConsultarCuenta(){
   print("Ingrese NumeroCuenta");
    String numeroCuenta= stdin.readLineSync();
    Cuenta c=cajaCodigo.buscarCuentaPorNumero(numeroCuenta);
    if(c!=null){
    print(c);
     print("1 para deposita ");
     print("2 para retirar ");
     String opcion = stdin.readLineSync();
     if(opcion == "1"){
       print("Ingrese el mondo a depositivar");
       String saldo =stdin.readLineSync();
       c.Depositar(double.parse(saldo));
     }else if(opcion== "2"){
        print("Ingrese el mondo a retirar");
       String saldo =stdin.readLineSync();
       c.Retirar(double.parse(saldo));
     }
    }
    
}
void CrearNuevaCuenta(){
    print("Nueva cuenta");
    print("Ingrese Nombre");
    String nombre= stdin.readLineSync();
    print("Ingrese Saldo");
    String saldo= stin.readLineStync();
    Cuenta c= new Cuenta(
      nombreTitular:nombre,
      numeroCuenta; numeroCuenta,
      saldo:double.parse(saldo));
      cajaCodigo.agregarCuenta(c);
      print("Cuenta creada exitosamente : )");
}