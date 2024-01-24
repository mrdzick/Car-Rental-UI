import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/loginPage.dart';
import 'package:vehicle_rental/pages/homePage.dart';
import 'package:vehicle_rental/pages/myProfile.dart';
import 'package:vehicle_rental/pages/pickupDetailPage.dart';
import 'package:vehicle_rental/splashScreen.dart';
import 'package:vehicle_rental/widget/carCard.dart';

import 'pages/carListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme: ThemeData(
      fontFamily: 'Poppins',
     ),


     home: SplashScreen(),

    // initialRoute: CarListScreen.idScreen,
     routes: {
      SplashScreen.idScreen: (context) => SplashScreen(),
      HomePage.idScreen: (context) =>  HomePage(),
      PickupDetailPage.idScreen:(context) => PickupDetailPage(),
      CarListScreen.idScreen:(context) => CarListScreen(),
      MyProfilePage.idScreen: (context) => MyProfilePage(), 
      LoginPage.idScreen: (context) => LoginPage(),
     },
      debugShowCheckedModeBanner: false,
     
    );
  }
}
