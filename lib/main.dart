import 'package:flutter/material.dart';
import 'package:mobile/screens/Login.dart';
import 'package:mobile/screens/Setpassword.dart';
import 'package:mobile/screens/verify.dart';
import 'package:mobile/styles/colors.dart';
import 'package:mobile/styles/colors.dart';
import 'package:sizer/sizer.dart';
import 'screens/Driver/end_task_screen.dart';
import 'screens/Driver/task_details_screen.dart';
import 'screens/vendor/branch_screen.dart';
import 'screens/vendor/google_maps_screen.dart';
import 'screens/vendor/home_layout.dart';

void main() {
  runApp(const MyApp());
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
          home: Login(),
        );
      },
    );
  }
}
