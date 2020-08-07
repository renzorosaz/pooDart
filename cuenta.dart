 class Cuenta{
   int id;
    String nombreTitular;
    String tipo;
    int tipoMoneda;
  double saldo;
  String numeroCuenta;
  List<String> movimientos = new List();

  Cuenta({
    this.id,
  this.nombreTitular,
  this.tipo,
  this.saldo,
  this.tipoMoneda,
  this.numeroCuenta,
  });

  String toString(){
    return "${nombreTitular}-   ${saldo}";
  }
  
  void Depositar(double dinero){
    saldo+=dinero;
    print("Se ha depositado ${dinero}");
    movimientos.add("Se ha depositado S/ ${dinero}");
    
  }

  void Retirar(double dinero){
    if(dinero<=saldo){
      saldo-=dinero;
      print("Se ha retiradao S/. ${dinero}");
      movimientos.add("Se ha retiradao S/. ${dinero}");
    }else{
      print("Se tiene suficnetes fondos para retirar S/. ${dinero}");
    }
  }

  void imprimirMovimientos(){
    print("Lista de movimientos");
   movimientos.reversed.forEach(print);
  }
}