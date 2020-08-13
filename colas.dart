main(List<String> args) {}

class Nodo<E> {
  E valor;
  Nodo<E> siguiente;
}

class Cola<E> {
  Nodo<E> primero;
  Nodo<E> ultimo;

  void Push(E valor) {

    /* Nodo nuevo = new Nodo(valor);
    if (primero == null) {
      primero = nuevo;
      ultimo = nuevo;
    } else {
      siguiente = nuevo;
      siguiente = nuevo;
    }
  }
  E Pop(){
    if(ultimo==null){
      return null;
    }
    int sale= ultimo;
    ultimo=siguiente;
    return sale; */
  }
}

/* public Object pop() {
    if (end == null)
      return null;
    ;
    Object o = end.elem;
    end = end.Next;
    size--;
    return o;
  } */

/*  public void enqueue(Object o) {
    Node new_node = new Node(o);
    if (first == null) {
      first = new_node;
      end = new_node;
    } else {
      end.Next = new_node;
      end = new_node;
    }
    size++;
  }; */
