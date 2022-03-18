import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:mobile/screens/splash_screen.dart';
import 'package:mobile/screens/vendor/home_layout.dart';


import 'package:mobile/screens/vendor/my_tasks.dart';
import 'package:mobile/screens/vendor/order_status_screen.dart';
import 'package:mobile/screens/vendor/request_pick_up_screen.dart';
import 'package:mobile/shared/bloc_observer.dart';


import 'package:mobile/styles/colors.dart';
import 'package:mobile/styles/colors.dart';
import 'package:sizer/sizer.dart';
import 'screens/Driver/end_task_screen.dart';
import 'screens/Driver/task_details_screen.dart';
import 'screens/Login.dart';
import 'screens/Setpassword.dart';
import 'screens/vendor/branch_screen.dart';
import 'screens/vendor/google_maps_screen.dart';
import 'screens/verify.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Route Me',
          theme: ThemeData(
              fontFamily: 'cairo', scaffoldBackgroundColor: AppColors.white),
          home: HomeLayout(),
        );
      },
    );
  }
}
