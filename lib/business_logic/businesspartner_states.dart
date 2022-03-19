import 'package:firstpproject/data/models/businessmodel.dart';

abstract class AppState {}
class AppInitialState extends AppState{}
class Success extends AppState {

  final List<BusinessPartnerModel> businessPartnerList;

  Success(this.businessPartnerList);
}




