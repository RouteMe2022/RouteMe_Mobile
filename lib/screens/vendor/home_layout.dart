import 'package:flutter/material.dart';
import 'package:mobile/screens/vendor/branch_screen.dart';
import 'package:mobile/screens/vendor/order_status_screen.dart';
import 'package:mobile/screens/vendor/request_pick_up_screen.dart';
import 'package:mobile/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({ Key? key }) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  int currentIndex = 0;
  final List<Widget> children = [
    OrderStatusScreen(),
    requestPickUpScreen(),
    BranchScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          key: scaffoldKey,
           body: children[currentIndex],
          
          bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: _onItemTapped,    
        items: [
       BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          label: 'State',
          backgroundColor: AppColors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pin_drop),
          label: 'Pick up',
          backgroundColor: AppColors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Branches',
          backgroundColor: AppColors.lightBlue,
        ),
        
      ],
      
      ),
        );
  }
}