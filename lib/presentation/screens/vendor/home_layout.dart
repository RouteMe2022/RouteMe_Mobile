import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobile/business_logic/app_cubit/app_cubit.dart';
import 'package:mobile/business_logic/app_cubit/app_state.dart';
import 'package:mobile/presentation/styles/colors.dart';

class HomeLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          body: AppCubit.get(context)
              .children[AppCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.purple,
            unselectedItemColor: AppColors.navBar,
            type: BottomNavigationBarType.fixed,
            currentIndex: AppCubit.get(context).currentIndex,
            onTap: (index) {
              AppCubit.get(context).changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.pie_chart,
                ),
                label: translate("status"),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.pin_drop,
                ),
                label: translate("pickup"),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.store,
                ),
                label: translate("branches"),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                label: translate("settings"),
              ),
            ],
          ),
        );
      },
    );
  }
}
