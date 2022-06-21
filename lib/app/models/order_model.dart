enum OrderModelType{
  empacotado,
  encaixotado
}
class OrderModel{
  
  final String id;
  final OrderModelType type; // limitar tipos de encomendas (enum?)
  final String origin;
  final String destiny;
  

  OrderModel(this.id, this.type, this.origin, this.destiny);

}