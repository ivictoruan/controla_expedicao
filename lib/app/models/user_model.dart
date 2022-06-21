import 'package:controla_expedicao/app/models/company_model.dart';
import 'package:controla_expedicao/app/models/order_model.dart';

class UserModel{
  final String name;
  final CompanyModel company;
  final OrderModel? order;

  UserModel(this.name, this.company, this.order);
  

}