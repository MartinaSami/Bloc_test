import 'package:firstpproject/business_logic/businesspartner_cubit.dart';
import 'package:firstpproject/business_logic/businesspartner_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppState>(
            listener: (BuildContext context, AppState state) {},
            builder: (BuildContext context, AppState state) {
              AppCubit cubit = AppCubit.get(context);
              cubit.getAllPartners();
              var items = cubit.businessPartnerList;
              return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Text(items[index].name.toString())),
                        );
                      }),
                ),
              );
            }));
  }
}
