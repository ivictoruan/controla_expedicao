
enum MyOrderState{
  idle,
  create,
}

class MyOrderController{
  MyOrderState state  = MyOrderState.idle;

  void startOrder(){ // inicia ordem, mudando o estado da tela para criação.

  }
}