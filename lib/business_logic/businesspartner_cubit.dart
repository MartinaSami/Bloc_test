import 'package:firstpproject/business_logic/businesspartner_states.dart';
import 'package:firstpproject/data/models/businessmodel.dart';
import 'package:firstpproject/data/services/items_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  BusinessServices businessServices = BusinessServices();
  List<BusinessPartnerModel> businessPartnerList = [];

  List<BusinessPartnerModel>? getAllPartners() {
    businessServices.getBusinessPartners().then((value) {
      emit(Success(businessPartnerList));
      businessPartnerList = value;
    });

    return businessPartnerList;
  }
}
